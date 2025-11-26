class test extends uvm_test;
`uvm_component_utils(test)

environment env;
function new(string name = "test", uvm_component parent = null );
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("TEST","BUILD PHASE",UVM_NONE)
    env = environment::type_id::create("env",this);
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("TEST","CONNECT PHASE",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("TEST","END OF ELABORATION PHASE",UVM_NONE)
    uvm_top.print_topology();
endfunction

function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info("TEST","START OF SIMULATION PHASE",UVM_NONE)
endfunction

task run_phase(uvm_phase phase);
    `uvm_info("TEST","RUN PHASE",UVM_NONE)
endtask

function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    `uvm_info("TEST","EXTRACT PHASE",UVM_NONE)
endfunction

function void check_phase(uvm_phase phase);
    super.check_phase(phase);
    `uvm_info("TEST","CHECK PHASE",UVM_NONE)
endfunction

function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("TEST","REPORT PHASE",UVM_NONE)
endfunction

function void final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("TEST","FINAL PHASE",UVM_NONE)
endfunction

endclass





