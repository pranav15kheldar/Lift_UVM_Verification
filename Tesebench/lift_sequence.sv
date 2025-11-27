class lift_sequence extends uvm_sequence;
    /* In this class we start item randomize it and finish it  */

    /* Factory Registration  */
    `uvm_object_utils(lift_sequence)

    /* New Function */
    function new(string name = "lift_sequence");
        super.new(name);
    endfunction

    task body;
        /* About Task Body: */
    endtask
endclass
/* lift_sequence class ends */
