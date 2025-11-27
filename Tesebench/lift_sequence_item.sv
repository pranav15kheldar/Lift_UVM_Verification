class lift_sequence_item extends uvm_sequence_item;
    /* In this class we declear all the singals that we want to randomize */
    
    /* Factory Registration of Class */
    `uvm_object_utils(lift_sequence_item)

    /* New Function  */
    function new(string name = "lift_sequence_item");
        super.new(name);
    endfunction

    task body;

    endtask
endclass
/* lift_sequence_item Class Ends */