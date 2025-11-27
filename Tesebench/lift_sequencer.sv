class lift_sequencer extends uvm_sequencer#(lift_sequence_item);
    /* About lift Sequencer : */

    /* Factory Registration */
    `uvm_component_utils(lift_sequencer)

    /* New Function  */
    function new(string name = "lift_sequencer", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(),"BUILD PHASE",UVM_NONE)
    endfunction

    /* Connect Phase */
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info(get_type_name(),"CONNECT PHASE",UVM_NONE)
    endfunction
    
    /* End od Elaboration Phase */
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info(get_type_name(),"END OF ELABORATION PHASE",UVM_NONE)
    endfunction

    /* Start of Simulation Phase */
    function void start_of_simulation_phase(uvm_phase phase);
        super.start_of_simulation_phase(phase);
        `uvm_info(get_type_name(),"START OF SIMULATION PHASE",UVM_NONE)
    endfunction

    /* Run phase  */
    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info(get_type_name(), "Run Phase", UVM_NONE)
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
/* End Of Lift_sequencer Class */
