/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR XOR Gate with Arbiter PUFs outputs as inputs and thus gives us the response output of the XOR PUF

`timescale 1ns / 1ps

module Final_XOR( PUF1_Out, PUF2_Out, PUF3_Out, XOR_PUF_Out);

input PUF1_Out,PUF2_Out,PUF3_Out; // INPUTS to the XOR Gate

output XOR_PUF_Out; // Output of the XOR PUF as a whole

(*LOC="SLICE_X3Y59"*)(*BEL="A6LUT"*)XOR XOR_Last(XOR_PUF_Out, PUF1_Out, PUF2_Out, PUF3_Out);

endmodule
