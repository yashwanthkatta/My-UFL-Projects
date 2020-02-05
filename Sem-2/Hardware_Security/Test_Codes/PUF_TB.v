// FPGA projects using Verilog/ VHDL
// fpga4student.com: FPGA projects, Verilog projects, VHDL projects
// Verilog code for up counter with testbench
// Testbench Verilog code for up counter

`timescale 1ns / 1ps

module PUF_TB();
reg mux_in, rst;
reg [7:0]CH;
wire RESP;

// LED1, LED2;

Arbiter PUF( mux_in, RESP,CH, rst);

/* initial begin 
clk=0;
forever #12.5 clk=~clk;
end */

initial begin 
CH = 8'b0;
for( CH=0; CH<256; CH=CH+1)begin
         
        end

end

initial begin 
mux_in=0;
forever #12.5 mux_in=~mux_in;
end

initial begin
rst=1;
#20;
rst=0;
end

endmodule 