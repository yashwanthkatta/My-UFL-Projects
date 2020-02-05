/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Smarat Kautilya - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR A 2 TO 1 MUX

`timescale 1ns / 1ps

module  mux(I0, I1, Select, mux_out);

input I0, I1, Select ;
output mux_out;

wire  mux_out;

assign mux_out = (Select) ? I1 : I0;

endmodule 