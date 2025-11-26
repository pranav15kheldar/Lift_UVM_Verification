class agent extends uvm_agent;
`uvm_component_utils(agent)
sequencer seqr;
driver drivr;
monitor monitr;

function new(string name = "agent", uvm_component parent = null );
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("AGENT","BUILD PHASE",UVM_NONE)
    seqr = sequencer::type_id::create("seqr",this);
    drivr = driver::type_id::create("drivr",this);
    monitr = monitor::type_id::create("monitr",this);
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("AGENT","CONNECT PHASE",UVM_NONE)
    drivr.seq_item_port.connect(seqr.seq_item_export);
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("AGENT","END OF ELABORATION PHASE",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info("AGENT","START OF SIMULATION PHASE",UVM_NONE)
endfunction

task run_phase(uvm_phase phase);
    `uvm_info("AGENT","RUN PHASE",UVM_NONE)
endtask

function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    `uvm_info("AGENT","EXTRACT PHASE",UVM_NONE)
endfunction

function void check_phase(uvm_phase phase);
    super.check_phase(phase);
    `uvm_info("AGENT","CHECK PHASE",UVM_NONE)
endfunction

function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("AGENT","REPORT PHASE",UVM_NONE)
endfunction

function void final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("AGENT","FINAL PHASE",UVM_NONE)
endfunction

endclass



