class lift_environment extends uvm_env;
    /* About lift_enviroment: */

    /* Factory Registration */
    `uvm_component_utils(lift_environment)

    /* Hnadle Decleration */
    lift_agent agt_h;
    lift_scoreboard sb_h;

    /* New Function */
    function new(string name = "lift_environment", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("ENVIRONMENT","BUILD PHASE",UVM_NONE)
        agt_h = lift_agent::type_id::create("agt_h",this);
        sb_h = lift_scoreboard::type_id::create("sb_h",this);
    endfunction

    /* Connect Phase */
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info("ENVIRONMENT","CONNECT PHASE",UVM_NONE)
        /* Connect the monitor’s analysis port to the scoreboard’s analysis port */
        agt_h.monitor_h.ap.connect(sb_h.ap);
    endfunction

    /* ENd of Elaboration */
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info("ENVIRONMENT","END OF ELABORATION PHASE",UVM_NONE)
    endfunction

    /* Start of Simulation Phase */
    function void start_of_simulation_phase(uvm_phase phase);
        super.start_of_simulation_phase(phase);
        `uvm_info("ENVIRONMENT","START OF SIMULATION PHASE",UVM_NONE)
    endfunction

    /* Run Phase */
    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info("ENVIRONMENT","RUN PHASE",UVM_NONE)
    endtask

    /* Extract Phase */
    function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info("ENVIRONMENT","EXTRACT PHASE",UVM_NONE)
    endfunction

    /* Check Phase */
    function void check_phase(uvm_phase phase);
        super.check_phase(phase);
        `uvm_info("ENVIRONMENT","CHECK PHASE",UVM_NONE)
    endfunction

    /* Report Phase */
    function void report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info("ENVIRONMENT","REPORT PHASE",UVM_NONE)
    endfunction

    /* Final Phase */
    function void final_phase(uvm_phase phase);
        super.final_phase(phase);
        `uvm_info("ENVIRONMENT","FINAL PHASE",UVM_NONE)
    endfunction

endclass
/* End Of Enviroment Class */