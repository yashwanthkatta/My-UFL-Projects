/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE for the overall integration of the XOR PUF, i.e., integration of Arbiter PUFs, XOR gates.

`timescale 1ns / 1ps

module XOR_PUF(PUF_In, CH, XOR_PUF_Out, rst, LED1, LED2);

input PUF_In, rst;
input [7:0]CH;

output XOR_PUF_Out, LED1, LED2;

wire PUF_Out1, PUF_Out2, PUF_Out3;

reg L1, L2  = 1'b1;

PUF1 Arbiter1(.mux_in(PUF_In),.RESP(PUF_Out1),.CH(CH),.rst(rst));
PUF2 Arbiter2(.mux_in(PUF_In),.RESP(PUF_Out2),.CH(CH),.rst(rst));
PUF3 Arbiter3(.mux_in(PUF_In),.RESP(PUF_Out3),.CH(CH),.rst(rst));
Final_XOR xor1(.PUF1_Out(PUF_Out1), .PUF2_Out(PUF_Out2), .PUF3_Out(PUF_Out3), .XOR_PUF_Out(XOR_PUF_Out));

always @ (XOR_PUF_Out)

begin 

if(XOR_PUF_Out == 0)
begin
L2 <= 1'b0;
L1 <= 1'b1;
end
else
begin
L2 <= 1'b1;
L1 <= 1'b0;
end 

end 

assign LED1 = L1;
assign LED2 = L2;

endmodule
