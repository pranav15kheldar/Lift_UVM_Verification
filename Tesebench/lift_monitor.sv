class lift_monitor extends uvm_monitor;
    /* About lift_monitor : */

    /* Factory Registration */
    `uvm_component_utils(lift_monitor)

    /* Analysis port handle */
    uvm_analysis_port#(lift_sequence_item)ap;
    lift_sequence_item seqItem_h;

    function new(string name = "lift_monitor", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info("MONITOR","BUILD PHASE",UVM_NONE)
        /* Analysis Port Decleartion */
        ap = new("ap",this);
    endfunction

    /* Connect Phase */
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        `uvm_info("MONITOR","CONNECT PHASE",UVM_NONE)
    endfunction

    /* End Of Elaboration Phase */
    function void end_of_elaboration_phase(uvm_phase phase);
        super.end_of_elaboration_phase(phase);
        `uvm_info("MONITOR","END OF ELABORATION PHASE",UVM_NONE)
    endfunction

    /* Start Of Simulation */
    function void start_of_simulation_phase(uvm_phase phase);
        super.start_of_simulation_phase(phase);
        `uvm_info("MONITOR","START OF SIMULATION PHASE",UVM_NONE)
    endfunction

    /* Run Phase */
    task run_phase(uvm_phase phase);
        super.run_phase(phase);
        `uvm_info("MONITOR","RUN PHASE",UVM_NONE)
        ap.write(seqItem_h);
    endtask

    /* Extract Phase */
    function void extract_phase(uvm_phase phase);
        super.extract_phase(phase);
        `uvm_info("MONITOR","EXTRACT PHASE",UVM_NONE)
    endfunction

    /* Check Phase */
    function void check_phase(uvm_phase phase);
        super.check_phase(phase);
        `uvm_info("MONITOR","CHECK PHASE",UVM_NONE)
    endfunction

    /* Report Phase */
    function void report_phase(uvm_phase phase);
        super.report_phase(phase);
        `uvm_info("MONITOR","REPORT PHASE",UVM_NONE)
    endfunction

    /* Final Phase */
    function void final_phase(uvm_phase phase);
        super.final_phase(phase);
        `uvm_info("MONITOR","FINAL PHASE",UVM_NONE)
    endfunction

endclass
/* End Of lift_monitor Class */
