# Hello everyone I'm Jayaram,
This notes is for learning purpose, Here i will provide my solution of https://hdlbits.01xz.net/wiki/Problem_sets questions. If you have and other method to solve these prolem feel free to use, here I'm providing what i know.

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

