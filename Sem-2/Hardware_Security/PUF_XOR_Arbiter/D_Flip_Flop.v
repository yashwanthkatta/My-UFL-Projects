/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Smarat Kautilya - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

// CODE FOR D FLIP FLOP

`timescale 1ns / 1ps

module D_Flip_flop (D, clk, rst, Q);
input D;
input clk, rst ; 
output Q;

reg Q;

always @ ( negedge rst, posedge clk )
begin
if (rst == 1'b0) 
  Q <= 1'b0;
else 
  Q <= D;
end

endmodule
