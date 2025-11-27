import lift_pkg::*;
import uvm_pkg::*;
module tb_top;
bit clk;

//interface inf(clk);

initial begin
    clk = 0;
    forever begin
        #1 clk = ~clk;
    end
end
initial begin
    run_test("lift_test");
end
endmodule
