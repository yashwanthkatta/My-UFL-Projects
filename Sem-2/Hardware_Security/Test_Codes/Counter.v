/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR Counter

`timescale 1ns / 1ps

module Counter(en, count, clk, rst);

output [7:0] count;

input  clk, rst, en;
reg [7:0] count_reg ;

always @(posedge clk)
begin

if (rst)
 begin
  count_reg <= 8'b0;
end

else if(en && count_reg <= 8'b11111111)
begin
  count_reg <= count_reg + 1;
end

else if( count_reg > 8'b11111111)
begin
count_reg <= 9'b0;
end

end

assign count = count_reg[7:0];

endmodule 