/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR Counter

`timescale 1ns / 1ps

module Count(clk, rst, LED1, LED2);


output LED1,LED2;

input clk, rst;

reg [7:0] count_reg;
reg L1, L2;

always @(posedge clk)
begin

if (rst)
 begin
  count_reg <= 8'b0;
end

if( count_reg <= 256)
begin
  count_reg <= count_reg + 1;
end

else
begin
count_reg <= 8'b0;
end

if(count_reg==0 || count_reg==2||count_reg==4||count_reg==6||count_reg==8||count_reg==10)
begin
	L1 <= 1;
end

else
begin
	L2 <= 1;
end 

end

assign LED1 = L1;
assign LED2 = L2;

endmodule 