module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = a && b;
    // you can use single & or && Bit-wise and operator

endmodule
