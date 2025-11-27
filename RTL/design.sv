/* Update RTL Code Here */
/* Note : Add Commented Code and Also add summary about Code */

module lift(o_final_pos,o_open,o_close, i_up, i_down, i_floor,i_open, i_close,i_clk,i_power,i_battery,i_weight);
output reg[4:0] o_final_pos;
output reg o_open, o_close;
input wire  i_open, i_close, i_clk, i_power, i_battery,i_weight;
input wire[4:0] i_floor, i_up, i_down;
reg curr_pos;

typedef enum{init, idle, setup, access}state;
state curr_state=init, next_state=init;

always @(*) begin
case(curr_state) 

init: begin
if(i_power && i_battery) begin
next_state<=idle;
end
else begin
next_state<=init;
end
end

idle: begin
wait(i_up || i_down)
next_state<=setup;
end

setup: begin
if(i_weight <= 700) begin             //parameterize weight here
next_state<=access;
end 
else begin
next_state<=setup;
end
end

access: begin
wait(o_final_pos== i_floor && o_close && !(i_open))
next_state<=idle;
end

endcase
end

always @(posedge i_clk or i_up or i_down) begin
curr_state<= next_state;
end

always @(posedge i_clk) begin
case(curr_state)
init : begin end

idle: begin end 

setup :  begin
if(i_up) begin
repeat(i_up-curr_pos) begin
@(posedge i_clk);
end
curr_pos<=i_up;
end
else if(i_down) begin
repeat(curr_pos- i_down) begin
@(posedge i_clk);
end
curr_pos<=i_down;
end

o_open<=1'b1;
o_close<=1'b0;
@(posedge i_clk);
end

access: begin
while(i_open) begin
o_open<=1'b1;
end
o_open<=1'b0;
o_close<=1'b1;
@(posedge i_clk);
if(curr_pos> i_floor) begin
repeat(curr_pos-i_floor) begin
@(posedge i_clk);
end
end
else if(curr_pos<i_floor) begin
repeat(i_floor-curr_pos) begin
@(posedge i_clk);
end
end
curr_pos<=i_floor;
o_final_pos<=i_floor;
o_open<=1'b1;
while(i_open) begin
o_open<=1'b1;
end
o_close<=1'b0;
@(posedge i_clk);
o_open<=1'b0;
o_close <= 1'b1;

end

endcase
end

endmodule
