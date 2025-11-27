class lift_sequence extends uvm_sequence#(lift_sequence_item);
    /* In this class we start item randomize it and finish it  */

    /* Factory Registration  */
    `uvm_object_utils(lift_sequence)
    lift_sequence_item req;

    /* New Function */
    function new(string name = "lift_sequence");
        super.new(name);
    endfunction

    task body;
        /* About Task Body: */
        repeat(10) begin
            req = lift_sequence_item::type_id::create("req");
            start_item(req);
               if(!req.randomize()) begin
                   `uvm_info(get_type_name,"SEQ ITEM NOT RANDOMIZED",UVM_NONE)
               end
               else begin
                   `uvm_info(get_type_name,"SEQ ITEM IS RANDOMIZED SUCCESSFULLY",UVM_NONE)
               end
            finish_item(req);
        end
    endtask
endclass
/* lift_sequence class ends */
