class environment extends uvm_env;
`uvm_component_utils(environment)
agent agt;
scoreboard sb;

function new(string name = "environment", uvm_component parent = null );
    super.new(name, parent);
endfunction

function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    `uvm_info("ENVIRONMENT","BUILD PHASE",UVM_NONE)
    agt = agent::type_id::create("agt",this);
    sb = scoreboard::type_id::create("sb",this);
endfunction

function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    `uvm_info("ENVIRONMENT","CONNECT PHASE",UVM_NONE)
    agt.monitr.ap.connect(sb.ap);
endfunction

function void end_of_elaboration_phase(uvm_phase phase);
    super.end_of_elaboration_phase(phase);
    `uvm_info("ENVIRONMENT","END OF ELABORATION PHASE",UVM_NONE)
endfunction

function void start_of_simulation_phase(uvm_phase phase);
    super.start_of_simulation_phase(phase);
    `uvm_info("ENVIRONMENT","START OF SIMULATION PHASE",UVM_NONE)
endfunction

task run_phase(uvm_phase phase);
    `uvm_info("ENVIRONMENT","RUN PHASE",UVM_NONE)
endtask

function void extract_phase(uvm_phase phase);
    super.extract_phase(phase);
    `uvm_info("ENVIRONMENT","EXTRACT PHASE",UVM_NONE)
endfunction

function void check_phase(uvm_phase phase);
    super.check_phase(phase);
    `uvm_info("ENVIRONMENT","CHECK PHASE",UVM_NONE)
endfunction

function void report_phase(uvm_phase phase);
    super.report_phase(phase);
    `uvm_info("ENVIRONMENT","REPORT PHASE",UVM_NONE)
endfunction

function void final_phase(uvm_phase phase);
    super.final_phase(phase);
    `uvm_info("ENVIRONMENT","FINAL PHASE",UVM_NONE)
endfunction

endclass




