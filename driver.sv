class driver extends uvm_driver;
`uvm_component_utils(driver)
function new(string name = "driver", uvm_component parent = null );
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("DRIVER","BUILD PHASE",UVM_NONE)
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("DRIVER","CONNECT PHASE",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("DRIVER","END OF ELABORATION PHASE",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info("DRIVER","START OF SIMULATION PHASE",UVM_NONE)
endfunction

task run_phase(uvm_phase phase);
endtask

function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    `uvm_info("DRIVER","EXTRACT PHASE",UVM_NONE)
endfunction

function void check_phase(uvm_phase phase);
    super.check_phase(phase);
    `uvm_info("DRIVER","CHECK PHASE",UVM_NONE)
endfunction

function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("DRIVER","REPORT PHASE",UVM_NONE)
endfunction

function void final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("DRIVER","FINAL PHASE",UVM_NONE)
endfunction

endclass
