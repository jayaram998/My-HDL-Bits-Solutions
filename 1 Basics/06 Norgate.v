module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = ~(a||b);
    //NOR gate using bitwise OR  and NOT operator
    // you can also use bubbled  AND, assign out = ~a && ~b;
endmodule
