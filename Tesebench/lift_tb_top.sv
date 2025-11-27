import lift_pkg::*;
import uvm_pkg::*;
module tb_top;
bit i_clk;

//Interface instantiation
lift_interface inf(i_clk);

//dut instantiation
lift dut(.i_up        (inf.i_up        ),
         .i_down      (inf.i_down      ),
         .i_floor     (inf.i_floor     ),
         .i_open      (inf.i_open      ),
         .i_close     (inf.i_close     ),
         .i_clk       (inf.i_clk       ),
         .i_power     (inf.i_power     ),
         .i_battery   (inf.i_battery   ),
         .i_weight    (inf.i_weight    ),
         .o_open      (inf.o_open      ),
         .o_close     (inf.o_close     ),
         .o_final_pos (inf.o_final_pos )
         );

initial begin
    i_clk = 0;
    forever begin
        #1 i_clk = ~i_clk;
    end
end
initial begin
    run_test("lift_test");
end

initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
end 

initial begin
    uvm_config_db#(virtual lift_interface)::set(null,"*agt_h*","vif",inf);
end
endmodule
