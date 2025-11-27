class lift_agent extends uvm_agent;
    /* About lift_agent :  */

    /* Factory Registration */
    `uvm_component_utils(lift_agent)

    /* Handle Decleration  */
    lift_sequencer seqr_h;
    lift_driver driver_h;
    lift_monitor monitor_h;

    /* New Function */
    function new(string name = "lift_agent", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(),"BUILD PHASE",UVM_NONE)
        seqr_h = lift_sequencer::type_id::create("seqr_h",this);
        driver_h = lift_driver::type_id::create("driver_h",this);
        monitor_h = lift_monitor::type_id::create("monitor_h",this);
    endfunction

    /* Connect Phase */
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info(get_type_name(),"CONNECT PHASE",UVM_NONE)
        driver_h.seq_item_port.connect(seqr_h.seq_item_export);
    endfunction

    /* End Of Elaboration Phase */
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info(get_type_name(),"END OF ELABORATION PHASE",UVM_NONE)
    endfunction

    /* Start of Simulation Phase */
    function void start_of_simulation_phase(uvm_phase phase);
        super.start_of_simulation_phase(phase);
        `uvm_info(get_type_name(),"START OF SIMULATION PHASE",UVM_NONE)
    endfunction

    /* Run Phase */
    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info(get_type_name(),"RUN PHASE",UVM_NONE)
    endtask

    /* extract Phase */
    function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info(get_type_name(),"EXTRACT PHASE",UVM_NONE)
    endfunction

    /* check Phase */
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
/* End Of Life_agent Class */


