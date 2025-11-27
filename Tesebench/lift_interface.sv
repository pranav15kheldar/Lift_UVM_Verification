interface lift_interface(input i_clk);
  logic  [4:0]  i_up, i_down;
  logic  [4:0]  i_floor;
  logic         i_open;
  logic         i_close;
  logic         i_power;
  logic         i_battery;
  logic         i_weight;
  logic  [4:0]  o_final_pos;
  logic         o_open;
  logic         o_close;
    
endinterface
