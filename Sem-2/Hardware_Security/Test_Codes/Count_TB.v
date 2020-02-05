// FPGA projects using Verilog/ VHDL
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for up counter with testbench
// Testbench Verilog code for up counter

`timescale 1ns / 1ps

module Count_TB();
reg clk, rst;
wire [7:0] count;

Counter coun(count, clk, rst);

initial begin 
clk=0;
forever #5 clk=~clk;
end

initial begin
rst=1;
#20;
rst=0;
end

endmodule 