class scoreboard extends uvm_scoreboard;
`uvm_component_utils(scoreboard)
uvm_analysis_imp#(sequence_item,scoreboard)ap;

function new(string name = "scoreboard", uvm_component parent = null );
    super.new(name, parent);
endfunction

function write(sequence_item seq);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("SCOREBOARD","BUILD PHASE",UVM_NONE)
    ap = new("ap",this);
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("SCOREBOARD","CONNECT PHASE",UVM_NONE)
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("SCOREBOARD","END OF ELABORATION PHASE",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info("SCOREBOARD","START OF SIMULATION PHASE",UVM_NONE)
endfunction

task run_phase(uvm_phase phase);
    `uvm_info("SCOREBOARD","RUN PHASE",UVM_NONE)
endtask

function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    `uvm_info("SCOREBOARD","EXTRACT PHASE",UVM_NONE)
endfunction

function void check_phase(uvm_phase phase);
    super.check_phase(phase);
    `uvm_info("SCOREBOARD","CHECK PHASE",UVM_NONE)
endfunction

function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("SCOREBOARD","REPORT PHASE",UVM_NONE)
endfunction

function void final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("SCOREBOARD","FINAL PHASE",UVM_NONE)
endfunction

endclass


