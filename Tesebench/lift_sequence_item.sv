class lift_sequence_item extends uvm_sequence_item;
    /* In this class we declear all the singals that we want to randomize */
rand logic  [4:0]  i_up, i_down;
rand logic  [4:0]  i_floor;
rand logic         i_open;
rand logic         i_close;
rand logic         i_power;
rand logic         i_battery;
rand logic         i_weight;
     logic  [4:0]  o_final_pos;
     logic         o_open;
     logic         o_close;
    
    /* Factory Registration of Class */
    `uvm_object_utils_begin(lift_sequence_item) 
    `uvm_field_int(i_up     ,UVM_ALL_ON)
    `uvm_field_int(i_down   ,UVM_ALL_ON)
    `uvm_field_int(i_floor  ,UVM_ALL_ON)
    `uvm_field_int(i_open   ,UVM_ALL_ON)
    `uvm_field_int(i_close  ,UVM_ALL_ON)
    `uvm_field_int(i_power  ,UVM_ALL_ON)
    `uvm_field_int(i_battery,UVM_ALL_ON)
    `uvm_field_int(i_weight ,UVM_ALL_ON)
    `uvm_object_utils_end 

    /* New Function  */
    function new(string name = "lift_sequence_item");
        super.new(name);
    endfunction

    task body;

    endtask
endclass
/* lift_sequence_item Class Ends */
