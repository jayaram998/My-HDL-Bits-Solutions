module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = ~(a^b);
    // Also you can use
   // assign out = (~a && ~b) || (a&&b);

endmodule
