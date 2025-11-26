class monitor extends uvm_monitor;
`uvm_component_utils(monitor)
uvm_analysis_port#(sequence_item)ap;
sequence_item seq_i;

function new(string name = "monitor", uvm_component parent = null );
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("MONITOR","BUILD PHASE",UVM_NONE)
    ap = new("ap",this);
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("MONITOR","CONNECT PHASE",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("MONITOR","END OF ELABORATION PHASE",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info("MONITOR","START OF SIMULATION PHASE",UVM_NONE)
endfunction

task run_phase(uvm_phase phase);
    `uvm_info("MONITOR","RUN PHASE",UVM_NONE)
    ap.write(seq_i);
endtask

function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    `uvm_info("MONITOR","EXTRACT PHASE",UVM_NONE)
endfunction

function void check_phase(uvm_phase phase);
    super.check_phase(phase);
    `uvm_info("MONITOR","CHECK PHASE",UVM_NONE)
endfunction

function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("MONITOR","REPORT PHASE",UVM_NONE)
endfunction

function void final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("MONITOR","FINAL PHASE",UVM_NONE)
endfunction

endclass

