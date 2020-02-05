/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR ARBITER PUF -- TOP Module

`timescale 1ns / 1ps

module Arbiter_PUF(mux_in, RESP, clk, rst, LED1, LED2);

input  rst, clk, mux_in;

output RESP, LED1, LED2;

wire [7:0] count_out; 
wire en;
reg L1, L2  = 1'b1;

assign en = 1'b1;

Counter cou( .en(en), .count(count_out), .clk(clk), .rst(rst));
Arbiter A_PUF(.mux_in(mux_in), .RESP(RESP), .CH(count_out), .rst(rst));

always @ (RESP)

begin 

if(RESP == 0)
begin
L1 <= 1'b1;
L2 <= 1'b0;
end
else
begin
L1 <= 1'b0;
L2 <= 1'b1;
end 

end 

assign LED1 = L1;
assign LED2 = L2;

endmodule