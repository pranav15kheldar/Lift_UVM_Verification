/* Update RTL Code Here */
/* Note : Add Commented Code and Also add summary about Code */

module lift(o_final_pos,o_open,o_close, i_up, i_down, i_floor,i_open, i_close,i_clk,i_power,i_battery,i_weight);
    //i_clk used here as synchronizing reference to perform operations
    output reg[4:0] o_final_pos;
    output reg o_open, o_close;
    input wire  i_open, i_close, i_clk, i_power, i_battery,i_weight;
    input wire[4:0] i_floor, i_up, i_down;

    //curr_pos represents current position of lift
    reg curr_pos;

    //FSM States Declaration
    typedef enum{init, idle, setup, access}state;
    //Declared curr_state and next_state to track the state of system
    state curr_state=init, next_state=init;   


    //This always block for determining states of FSM
    always @(*) begin
        case(curr_state) 

            init: begin
                if(i_power && i_battery) begin
                    next_state<=idle;             //Lift is working only if i_power and i_battery is on
                end
                else begin
                    next_state<=init;
                end
            end

            idle: begin
                wait(i_up || i_down)            //Wait till user presses up or down button on respective floor
                next_state<=setup;
            end

            setup: begin
                if(i_weight <= 700) begin             //parameterize weight here  // will update i_weight later
                    next_state<=access;
                end 
                else begin
                    next_state<=setup;              //if i_weight is more than given weight then lift will halt and will not operate 
                end
            end

            access: begin
                wait(o_final_pos== i_floor && o_close && !(i_open))   // after lift reached the destination and door is closed and i_open!=1'b1 , system will go to idle state
                next_state<=idle;
            end

        endcase
    end

    //This always block for updating the states of FSM
    always @(posedge i_clk or i_up or i_down) begin
        curr_state<= next_state;
    end

    //This always block for performing operations in given state
    always @(posedge i_clk) begin
        case(curr_state)
            init : begin end   //  No operation performed for now

            idle: begin end     //  No operation performed for now

            setup :  begin
                //If i_up is pressed, lift will go to respective floor in (i_up-curr_pos) clk cycles
                if(i_up) begin      
                    repeat(i_up-curr_pos) begin
                        @(posedge i_clk);
                    end
                    curr_pos<=i_up;   // update curr_pos
                end
                //If i_down is pressed, lift will go to respective floor in (curr_pos-i_down) clk cycles
                else if(i_down) begin
                    repeat(curr_pos- i_down) begin
                        @(posedge i_clk);
                    end
                    curr_pos<=i_down;   //update curr_pos
                end

                //Open the lift door for one clk cycle
                o_open<=1'b1;
                o_close<=1'b0;
                @(posedge i_clk);
            end

            access: begin
                //Open the door till i_open(button inside the lift) is pressed
                // One press will last for one clock cycle
                while(i_open) begin
                    o_open<=1'b1;
                    @(posedge i_clk);
                end

                //Close the lift door in one clk cycle
                o_open<=1'b0;
                o_close<=1'b1;
                @(posedge i_clk);

                //Go to destination floor in (curr_pos-i_floor) clk cycles
                if(curr_pos> i_floor) begin
                    repeat(curr_pos-i_floor) begin
                        @(posedge i_clk);
                    end
                end

                //Go to destination floor in (i_floor-curr_pos) clk cycles
                else if(curr_pos<i_floor) begin
                    repeat(i_floor-curr_pos) begin
                        @(posedge i_clk);
                    end
                end

                //Update curr_pos
                curr_pos<=i_floor;
                o_final_pos<=i_floor;
                o_open<=1'b1;    //open the door
                o_close<=1'b0;
                @(posedge i_clk);

                //Open the door till i_open(button inside the lift) is pressed
                // One press will last for one clock cycle
                while(i_open) begin
                    o_open<=1'b1;
                    @(posedge i_clk);
                end
                
                //Close the door
                o_open<=1'b0;
                o_close <= 1'b1;
                @(posedge i_clk);

            end

        endcase
    end

endmodule
