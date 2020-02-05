/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR XOR GATE

`timescale 1ns / 1ps

module XOR(out,in1,in2,in3);
output out;
input in1,in2,in3;
assign out = in1 ^ in2 ^ in3;
endmodule
