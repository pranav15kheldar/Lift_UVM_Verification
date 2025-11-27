class lift_test extends uvm_test;
    /* About lift_test :  */

    /* Factory Registration */
    `uvm_component_utils(lift_test)

    /* Handle Declearation */
    lift_environment env_h;
    lift_sequence seq_h;

    /* NEw Function  */
    function new(string name = "lift_test", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(),"BUILD PHASE",UVM_NONE)
        /* Object Creation */
        env_h = lift_environment::type_id::create("env_h",this);
    endfunction

    /* Connect Phase */
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info(get_type_name(),"CONNECT PHASE",UVM_NONE)
    endfunction

    /* End Of ELaboration Phase */
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info(get_type_name(),"END OF ELABORATION PHASE",UVM_NONE)
        uvm_top.print_topology();
    endfunction

    /* Start Of Simulation Phase */
    function void start_of_simulation_phase(uvm_phase phase);
        super.start_of_simulation_phase(phase);
        `uvm_info(get_type_name(),"START OF SIMULATION PHASE",UVM_NONE)
    endfunction

    /* Run Phase */
    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info(get_type_name(),"RUN PHASE",UVM_NONE)
        phase.raise_objection(this);
        seq_h = lift_sequence::type_id::create("seq_h",this);
        seq_h.start(env_h.agt_h.seqr_h);
        phase.drop_objection(this);
    endtask

    /* Extract Phase */
    function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info(get_type_name(),"EXTRACT PHASE",UVM_NONE)
    endfunction

    /* Check Phase */
    function void check_phase(uvm_phase phase);
        super.check_phase(phase);
        `uvm_info(get_type_name(),"CHECK PHASE",UVM_NONE)
    endfunction

    /* Report Phase */
    function void report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info(get_type_name(),"REPORT PHASE",UVM_NONE)
    endfunction

    /* Final Phase */
    function void final_phase(uvm_phase phase);
        super.final_phase(phase);
        `uvm_info(get_type_name(),"FINAL PHASE",UVM_NONE)
    endfunction

endclass
/* End Of life_test */





