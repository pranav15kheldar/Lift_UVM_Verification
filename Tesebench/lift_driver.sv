class lift_driver extends uvm_driver;
    /* About lift_driver : */

    /* Factory registration */
    `uvm_component_utils(lift_driver)

    /* New FUnction */
    function new(string name = "lift_driver", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(),"BUILD PHASE",UVM_NONE)
    endfunction

    /* Connect phase */
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info(get_type_name(),"CONNECT PHASE",UVM_NONE)
    endfunction

    /* End Of Elaboration Phase */
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info(get_type_name(),"END OF ELABORATION PHASE",UVM_NONE)
    endfunction

    /* Start Of Simulation phase */
    function void start_of_simulation_phase(uvm_phase phase);
        super.start_of_simulation_phase(phase);
        `uvm_info(get_type_name(),"START OF SIMULATION PHASE",UVM_NONE)
    endfunction

    /* Run Phase  */
    task run_phase(uvm_phase phase);
        super.run_phase(phase);
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

    /* Final phase */
    function void final_phase(uvm_phase phase);
        super.final_phase(phase);
        `uvm_info(get_type_name(),"FINAL PHASE",UVM_NONE)
    endfunction

endclass
/* End of lift_driver Class */