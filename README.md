# Hello Everyone I'm Jayaram,
This notes is for learning purpose, Here i will provide my solution of https://hdlbits.01xz.net/wiki/Problem_sets questions. If you have any other method to solve these prolem feel free to use, here I'm providing what i know.

My HDLBit Progress

https://hdlbits.01xz.net/wiki/Special:VlgStats/Me

Let's start
Build a circuit with no inputs and one output that outputs a constant 0.
To solve this problem go to "1 Basic" folder and find "01 Getting Started.v" see the solution.
Here is the final results.
![Zero - HDLBits](https://github.com/user-attachments/assets/b26dedc6-c55e-4353-a862-71ae1e4c12f1)

# Wire
Create a module with one input and one output that behaves like a wire.
Here is wire problem statement Image
![wire](https://github.com/user-attachments/assets/a19ea485-99ce-4bde-a72a-b21c9b28bf50)
Solution
# "
module top_module( input in, output out );
    
    assign out = in;

endmodule
# "
![Wire op - HDLBits](https://github.com/user-attachments/assets/1ce747f5-48f4-4231-b069-25c7fc0287e0)

# Four Wire
Create a module with 3 inputs and 4 outputs that behaves like wires that makes these connections:

a -> w
b -> x
b -> y
c -> z
![Wire4 - HDLBits](https://github.com/user-attachments/assets/2d826d5b-7a48-4224-8e74-b37ee3fcab0d)
Solution
# "
module top_module( 

    input a,b,c,
    
    output w,x,y,z );
    
    assign w = a, x = b, y = b, z = c;

endmodule

# "
![Wire4 op - HDLBits](https://github.com/user-attachments/assets/7d643aab-20e7-4e26-8b23-4bc1715f6b02)

# Not Gate
Create a module that implements a NOT gate.
![and](https://github.com/user-attachments/assets/1e1d7648-ab5a-4c7a-a417-6bba563367cc)

Solution

module top_module( input in, output out );
    
    assign out = ~in;
    
    // ~ is used for not gate

endmodule

![not](https://github.com/user-attachments/assets/0b21a3e3-0b4a-4adf-a7af-88a2896de34e)

# And Gate

Create a module that implements an AND gate.

![and1](https://github.com/user-attachments/assets/81e49557-873d-4fab-a97e-deeea062d0a5)

Solution

module top_module( 
    input a, 
    input b, 
    output out );
    
     assign out = a && b;
    
    // you can use single & or && Bit-wise and operator

endmodule

Output

![and2](https://github.com/user-attachments/assets/02c76e91-f597-43ba-bbb9-b2dd525fcf5f)

# Nor Gate

Create a module that implements a NOR gate. A NOR gate is an OR gate with its output inverted. A NOR function needs two operators when written in Verilog.

![nor](https://github.com/user-attachments/assets/4b2211d5-67a5-4822-b11e-8b877dd2e3a1)

module top_module( 
    input a, 
    input b, 
    output out );
    
        assign out = ~(a||b);
    
    //NOR gate using bitwise OR  and NOT operator
    
    // you can also use bubbled  AND, assign out = ~a && ~b;

endmodule

![image](https://github.com/user-attachments/assets/348e7d43-ec6c-482b-a031-f8c822be6cc1)

# Xnor Gate

Create a module that implements an XNOR gate.

![image](https://github.com/user-attachments/assets/cdc99b8e-a23c-4908-9594-22433d120d09)

Solution

 module top_module( 
    input a, 
    input b, 
    output out );
    
    assign out = ~(a^b);
    
    // Also you can use
    
   // assign out = (~a && ~b) || (a&&b);

endmodule

Output

![image](https://github.com/user-attachments/assets/5437de1b-2251-4faf-aa50-175eece0ca2a)

# Declaring wires

The circuits so far have been simple enough that the outputs are simple functions of the inputs. As circuits become more complex, you will need wires to connect internal components together. When you need to use a wire, you should declare it in the body of the module, somewhere before it is first used. (In the future, you will encounter more types of signals and variables that are also declared the same way, but for now, we'll start with a signal of type wire).

![image](https://github.com/user-attachments/assets/601162ab-61f8-427b-928f-638201716b9b)

Implement the following circuit. Create two intermediate wires (named anything you want) to connect the AND and OR gates together. Note that the wire that feeds the NOT gate is really wire out, so you do not necessarily need to declare a third wire here. Notice how wires are driven by exactly one source (output of a gate), but can feed multiple inputs.

![image](https://github.com/user-attachments/assets/55629d95-2cf2-4dd3-bba1-0e7910e0cc42)

`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
    
    wire and1, and2;
    
    assign and1 = a&&b;
    
    assign and2 = c&&d;
    
    assign out = and1 || and2;
    
    assign out_n = ~out;

endmodule

![image](https://github.com/user-attachments/assets/2f4dddb8-7a2d-438b-a61e-e4492453edfa)

# 7458 Chip

Create a module with the same functionality as the 7458 chip. It has 10 inputs and 2 outputs. You may choose to use an assign statement to drive each of the output wires, or you may choose to declare (four) wires for use as intermediate signals, where each internal wire is driven by the output of one of the AND gates. For extra practice, try it both ways.

![image](https://github.com/user-attachments/assets/70e6bae2-c4ba-4440-a41c-371d5c45bf3a)

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    
    wire and1, and2, and3, and4;
    
    assign and1 = p2a && p2b;
    
    assign and2 = p2c && p2d;
    
    assign and3 = p1a && p1b && p1c;
    
    assign and4 = p1e && p1f && p1d;
    
    assign p2y = and1 || and2;
    
    assign p1y = and3 || and4;


endmodule

OutPut

![image](https://github.com/user-attachments/assets/2a667e8e-1560-43d8-ac59-e7baed3e548c)

# Vector0

Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is functionally equivalent to having 8 separate wires.

Notice that the declaration of a vector places the dimensions before the name of the vector, which is unusual compared to C syntax. However, the part select has the dimensions after the vector name as you would expect.


wire [99:0] my_vector;      // Declare a 100-element vector

assign out = my_vector[10]; // Part-select one bit out of the vector

![image](https://github.com/user-attachments/assets/0e2b89f4-6546-4f66-b10b-ed186ba4e9f6)

Code

module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  ); // Module body starts after module declaration
    
    assign outv = vec;
    
    assign   o0 = vec[0];
    
    assign   o1 = vec[1];
    
    assign   o2 = vec[2];

endmodule

![image](https://github.com/user-attachments/assets/3ba66dce-4d2e-4cb9-b42a-5e444d85edd2)

# Vector in more Details

Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is equivalent to having 8 separate wires.

Vectors must be declared:

type [upper:lower] vector_name;

type specifies the datatype of the vector. This is usually wire or reg. If you are declaring a input or output port, the type can additionally include the port type (e.g., input or output) as well. Some examples:

wire [7:0] w;         // 8-bit wire

reg  [4:1] x;         // 4-bit reg

output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)

input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)

output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.

wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.

Code

`default_nettype none     // Disable implicit nets. Reduces some types of bugs.

module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );
    
    assign out_hi = in[15:8];
    
    assign out_lo = in[7:0];

endmodule

![image](https://github.com/user-attachments/assets/aedefb3d-fbb6-44c2-af9d-c097a713a684)

# Vector Port Select

A 32-bit vector can be viewed as containing 4 bytes (bits [31:24], [23:16], etc.). Build a circuit that will reverse the byte ordering of the 4-byte word.

AaaaaaaaBbbbbbbbCcccccccDddddddd => DdddddddCcccccccBbbbbbbbAaaaaaaa

Code:

module top_module( 
    input [31:0] in,
    output [31:0] out );

    // assign out[31:24] = ...;
    
  //byte reversing
  
//This operation is often used when the endianness of a piece of data needs to be swapped, 

//for example between little-endian x86 systems and the big-endian formats used in many Internet protocols.
    
    assign out[7:0] = in[31:24];
    
    assign out[15:8] = in[23:16];
    
    assign out[23:16] = in[15:8];
    
    assign out[31:24] = in[7:0];
    
endmodule

![image](https://github.com/user-attachments/assets/994aee8e-eddb-49da-bb37-ebacc15e0bb7)

# Bitwise vs. Logical Operators

Build a circuit that has two 3-bit inputs that computes the bitwise-OR of the two vectors, the logical-OR of the two vectors, and the inverse (NOT) of both vectors. Place the inverse of b in the upper half of out_not (i.e., bits [5:3]), and the inverse of a in the lower half.

![image](https://github.com/user-attachments/assets/9b5290c3-01ae-4385-bac4-3aaca8ad2b61)

Code:

module top_module( 
    input [2:0] a,
    input [2:0] b,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    
     assign out_or_bitwise = a|b;
     
    assign out_or_logical = a||b;
    
    assign out_not[5:3]   = ~b; //this is bitwise not
    
    assign out_not[2:0]   = ~a;

endmodule

![image](https://github.com/user-attachments/assets/e24b9ddd-b8ab-4db9-9710-5580475a525c)

# Four input Gate

Build a combinational circuit with four inputs, in[3:0].

There are 3 outputs:

out_and: output of a 4-input AND gate.

out_or: output of a 4-input OR gate.

out_xor: output of a 4-input XOR gate.

Code:

module top_module( 
    input [3:0] in,
    output out_and,
    output out_or,
    output out_xor
);
    
    assign out_and = in[3] && in[2] && in[1] && in[0];
    
    assign out_or = in[3] || in[2] || in[1] || in[0];
    
    assign out_xor = in[3] ^ in[2] ^ in[1] ^ in[0];

endmodule

![image](https://github.com/user-attachments/assets/230296f0-bb95-48c2-b98f-1ddad614dee1)

# Vector connection Operator

The concatenation operator can be used on both the left and right sides of assignments.

input [15:0] in;

output [23:0] out;

assign {out[7:0], out[15:8]} = in;         // Swap two bytes. Right side and left side are both 16-bit vectors.

assign out[15:0] = {in[7:0], in[15:8]};    // This is the same thing.

assign out = {in[7:0], in[15:8]};       // This is different. The 16-bit vector on the right is extended to

                                        // match the 24-bit vector on the left, so out[23:16] are zero.
                                        
                                        // In the first two examples, out[23:16] are not assigned.

Code:
module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//
    
	//Concatenation needs to know the width of every component (or how would you know the length of the result?).
 
    //Thus, {1, 2, 3} is illegal and results in the error message: unsized constants are not allowed in concatenations.
    
	//The concatenation operator can be used on both the left and right sides of assignments.
    
    wire [31:0] concat_reg; //raise an error when work with reg. Reason unknown???
    
    assign concat_reg = {a[4:0], b[4:0], c[4:0], d[4:0], e[4:0], f[4:0], 2'b11};
    
    assign w = concat_reg[31:24];
    
    assign x = concat_reg[23:16];
    
    assign y = concat_reg[15:8];
    
    assign z = concat_reg[7:0];

endmodule

![image](https://github.com/user-attachments/assets/659105f8-3620-4e22-8dad-7e83f8023aaf)

# Vector Reversal

Given an 8-bit input vector [7:0], reverse its bit ordering.

Code:

module top_module( 
    input [7:0] in,
    output [7:0] out
);
    
    assign out = {in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7]};

endmodule


![image](https://github.com/user-attachments/assets/6304523f-4b2d-49ff-87ea-7d77c6e778de)

# Replication Operator

The concatenation operator allowed concatenating together vectors to form a larger vector. But sometimes you want the same thing concatenated together many times, and it is still tedious to do something like assign a = {b,b,b,b,b,b};. The replication operator allows repeating a vector and concatenating them together:

Code:

module top_module (
    input [7:0] in,
    output [31:0] out );
    
	// The replication operator allows repeating a vector and concatenating them together:
 
	//{num{vector}}
    
    //this is sign-extending a smaller number to a larger one
    
    assign out = { {24{in[7]}} , in[7:0] };

endmodule

# More Replication


![image](https://github.com/user-attachments/assets/a1835a63-944d-4096-9a75-1a34833267d7)


module top_module (
    input a, b, c, d, e,
    output [24:0] out );//

    // The output is XNOR of two vectors created by 
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };
    assign out = ~{ {5{a}},{5{b}},{5{c}},{5{d}},{5{e}}} ^ { {5{a,b,c,d,e}}};

endmodule


