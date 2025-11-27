class lift_driver extends uvm_driver#(lift_sequence_item);
    /* About lift_driver : */

    /* Factory registration */
    `uvm_component_utils(lift_driver)
    virtual lift_interface vif;

    /* New FUnction */
    function new(string name = "lift_driver", uvm_component parent = null );
        super.new(name, parent);
    endfunction

    /* Build Phase */
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        `uvm_info(get_type_name(),"BUILD PHASE",UVM_NONE)
        req = lift_sequence_item::type_id::create("req");
        if(!uvm_config_db#(virtual lift_interface)::get(this," ","vif",vif)) begin
            `uvm_info(get_type_name(),"DID NOT GET INTERFACE",UVM_NONE)
        end
        else begin
            `uvm_info(get_type_name(),"G0T INTERFACE!!",UVM_NONE)
        end
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
        forever begin
            seq_item_port.get_next_item(req);
            req.print();
            @(posedge vif.i_clk);
            reset();
            perform_txn(req.i_up, req.i_down, req.i_floor,req.i_open, req.i_close,req.i_power,req.i_battery,req.i_weight);
            seq_item_port.item_done();
        end
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
    
    task reset();
         vif.i_up     <= 0;    
         vif.i_down   <= 0;
         vif.i_floor  <= 0;
         vif.i_open   <= 0;
         vif.i_close  <= 0;
         vif.i_power  <= 0;
         vif.i_battery<= 0;
         vif.i_weight <= 0;
         repeat(5) @(posedge vif.i_clk);
    endtask

    task perform_txn(logic [4:0]i_up, i_down, i_floor,logic i_open, i_close,i_power,i_battery,i_weight);
         vif.i_up      <= i_up     ; 
         vif.i_down    <= i_down   ;
         vif.i_floor   <= i_floor  ;
         vif.i_open    <= i_open   ;
         vif.i_close   <= i_close  ;
         vif.i_power   <= i_power  ;
         vif.i_battery <= i_battery;
         vif.i_weight  <= i_weight ;
    endtask

endclass
/* End of lift_driver Class */
