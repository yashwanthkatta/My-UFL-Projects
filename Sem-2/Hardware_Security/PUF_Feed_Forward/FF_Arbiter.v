/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avmux_inash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR FEED FORWARD ARBITER PUF

`timescale 1ns / 1ps

module FF_Arbiter(mux_in, RESP, CH, rst, LED1, LED2);

input mux_in,rst;
input [7:0]CH;

wire mu_1,mu_2,mu_3,mu_4,mu_5,mu_6,mu_7,mu_8,mu_9,mu_10,mu_11,mu_12,mu_13,mu_14,mu_15,mu_16,mu_17,mu_18,mu_19,mu_20,mu_21,mu_22,mu_23,mu_24,mu_25,mu_26,mu_27,mu_28,mu_29,mu_30,mu_31,mu_32,mu_33,mu_34,mu_35,mu_36,mu_37,mu_38,mu_39,mu_40,mu_41,mu_42,mu_43,mu_44,mu_45,mu_46,mu_47,mu_48,mu_49,mu_50,mu_51,mu_52,mu_53,mu_54,mu_55,mu_56,mu_57,mu_58,mu_59,mu_60,mu_61,mu_62,mu_63,mu_64,ml_1,ml_2,ml_3,ml_4,ml_5,ml_6,ml_7,ml_8,ml_9,ml_10,ml_11,ml_12,ml_13,ml_14,ml_15,ml_16,ml_17,ml_18,ml_19,ml_20,ml_21,ml_22,ml_23,ml_24,ml_25,ml_26,ml_27,ml_28,ml_29,ml_30,ml_31,ml_32,ml_33,ml_34,ml_35,ml_36,ml_37,ml_38,ml_39,ml_40,ml_41,ml_42,ml_43,ml_44,ml_45,ml_46,ml_47,ml_48,ml_49,ml_50,ml_51,ml_52,ml_53,ml_54,ml_55,ml_56,ml_57,ml_58,ml_59,ml_60,ml_61,ml_62,ml_63,ml_64;
wire out1,out2;
wire outdata1,outdata0;

reg L1, L2  = 1'b1;

output RESP, LED1, LED2;

(*LOC="SLICE_X0Y2"*)(*BEL="A6LUT"*) mux MU_1( mux_in, mux_in, CH[0], mu_1 );
(*LOC="SLICE_X0Y2"*)(*BEL="D6LUT"*) mux ML_1( mux_in, mux_in, CH[0], ml_1 );
(*LOC="SLICE_X0Y3"*)(*BEL="A6LUT"*) mux MU_2( mu_1, ml_1, CH[1], mu_2 );
(*LOC="SLICE_X0Y3"*)(*BEL="D6LUT"*) mux ML_2( ml_1, mu_1, CH[1], ml_2 );
(*LOC="SLICE_X0Y4"*)(*BEL="A6LUT"*) mux MU_3( mu_2, ml_2, CH[2], mu_3 );
(*LOC="SLICE_X0Y4"*)(*BEL="D6LUT"*) mux ML_3( ml_2, mu_2, CH[2], ml_3 );
(*LOC="SLICE_X0Y5"*)(*BEL="A6LUT"*) mux MU_4( mu_3, ml_3, CH[3], mu_4 );
(*LOC="SLICE_X0Y5"*)(*BEL="D6LUT"*) mux ML_4( ml_3, mu_3, CH[3], ml_4 );
(*LOC="SLICE_X0Y6"*)(*BEL="A6LUT"*) mux MU_5( mu_4, ml_4, CH[4], mu_5 );
(*LOC="SLICE_X0Y6"*)(*BEL="D6LUT"*) mux ML_5( ml_4, mu_4, CH[4], ml_5 );
(*LOC="SLICE_X0Y7"*)(*BEL="A6LUT"*) mux MU_6( mu_5, ml_5, CH[5], mu_6 );
(*LOC="SLICE_X0Y7"*)(*BEL="D6LUT"*) mux ML_6( ml_5, mu_5, CH[5], ml_6 );
(*LOC="SLICE_X0Y8"*)(*BEL="A6LUT"*) mux MU_7( mu_6, ml_6, CH[6], mu_7 );
(*LOC="SLICE_X0Y8"*)(*BEL="D6LUT"*) mux ML_7( ml_6, mu_6, CH[6], ml_7 );
(*LOC="SLICE_X0Y9"*)(*BEL="A6LUT"*) mux MU_8( mu_7, ml_7, CH[7], mu_8 );
(*LOC="SLICE_X0Y9"*)(*BEL="D6LUT"*) mux ML_8( ml_7, mu_7, CH[7], ml_8 );
(*LOC="SLICE_X0Y10"*)(*BEL="A6LUT"*) mux MU_9( mu_8, ml_8, CH[0], mu_9 );
(*LOC="SLICE_X0Y10"*)(*BEL="D6LUT"*) mux ML_9( ml_8, mu_8, CH[0], ml_9 );
(*LOC="SLICE_X0Y11"*)(*BEL="A6LUT"*) mux MU_10( mu_9, ml_9, CH[1], mu_10 );
(*LOC="SLICE_X0Y11"*)(*BEL="D6LUT"*) mux ML_10( ml_9, mu_9, CH[1], ml_10 );
(*LOC="SLICE_X0Y12"*)(*BEL="A6LUT"*) mux MU_11( mu_10, ml_10, CH[2], mu_11 );
(*LOC="SLICE_X0Y12"*)(*BEL="D6LUT"*) mux ML_11( ml_10, mu_10, CH[2], ml_11 );
(*LOC="SLICE_X0Y13"*)(*BEL="A6LUT"*) mux MU_12( mu_11, ml_11, CH[3], mu_12 );
(*LOC="SLICE_X0Y13"*)(*BEL="D6LUT"*) mux ML_12( ml_11, mu_11, CH[3], ml_12 );
(*LOC="SLICE_X0Y14"*)(*BEL="A6LUT"*) mux MU_13( mu_12, ml_12, CH[4], mu_13 );
(*LOC="SLICE_X0Y14"*)(*BEL="D6LUT"*) mux ML_13( ml_12, mu_12, CH[4], ml_13 );
(*LOC="SLICE_X0Y15"*)(*BEL="A6LUT"*) mux MU_14( mu_13, ml_13, CH[5], mu_14 );
(*LOC="SLICE_X0Y15"*)(*BEL="D6LUT"*) mux ML_14( ml_13, mu_13, CH[5], ml_14 );
(*LOC="SLICE_X0Y16"*)(*BEL="A6LUT"*) mux MU_15( mu_14, ml_14, CH[6], mu_15 );
(*LOC="SLICE_X0Y16"*)(*BEL="D6LUT"*) mux ML_15( ml_14, mu_14, CH[6], ml_15 );
(*LOC="SLICE_X0Y17"*)(*BEL="A6LUT"*) mux MU_16( mu_15, ml_15, CH[7], mu_16 );
(*LOC="SLICE_X0Y17"*)(*BEL="D6LUT"*) mux ML_16( ml_15, mu_15, CH[7], ml_16 );
(*LOC="SLICE_X0Y18"*)(*BEL="A6LUT"*) mux MU_17( mu_16, ml_16, CH[0], mu_17 );
(*LOC="SLICE_X0Y18"*)(*BEL="D6LUT"*) mux ML_17( ml_16, mu_16, CH[0], ml_17 );
(*LOC="SLICE_X1Y18"*) D_Flip_Flop DFF_1 ( mu_17, ml_17, rst, outdata0 );
(*LOC="SLICE_X0Y19"*)(*BEL="A6LUT"*) mux MU_18( mu_17, ml_17, CH[1], mu_18 );
(*LOC="SLICE_X0Y19"*)(*BEL="D6LUT"*) mux ML_18( ml_17, mu_17, CH[1], ml_18 );
(*LOC="SLICE_X0Y20"*)(*BEL="A6LUT"*) mux MU_19( mu_18, ml_18, CH[2], mu_19 );
(*LOC="SLICE_X0Y20"*)(*BEL="D6LUT"*) mux ML_19( ml_18, mu_18, CH[2], ml_19 );
(*LOC="SLICE_X0Y21"*)(*BEL="A6LUT"*) mux MU_20( mu_19, ml_19, CH[3], mu_20 );
(*LOC="SLICE_X0Y21"*)(*BEL="D6LUT"*) mux ML_20( ml_19, mu_19, CH[3], ml_20 );
(*LOC="SLICE_X0Y22"*)(*BEL="A6LUT"*) mux MU_21( mu_20, ml_20, CH[4], mu_21 );
(*LOC="SLICE_X0Y22"*)(*BEL="D6LUT"*) mux ML_21( ml_20, mu_20, CH[4], ml_21 );
(*LOC="SLICE_X0Y23"*)(*BEL="A6LUT"*) mux MU_22( mu_21, ml_21, CH[5], mu_22 );
(*LOC="SLICE_X0Y23"*)(*BEL="D6LUT"*) mux ML_22( ml_21, mu_21, CH[5], ml_22 );
(*LOC="SLICE_X0Y24"*)(*BEL="A6LUT"*) mux MU_23( mu_22, ml_22, CH[6], mu_23 );
(*LOC="SLICE_X0Y24"*)(*BEL="D6LUT"*) mux ML_23( ml_22, mu_22, CH[6], ml_23 );
(*LOC="SLICE_X0Y25"*)(*BEL="A6LUT"*) mux MU_24( mu_23, ml_23, CH[7], mu_24 );
(*LOC="SLICE_X0Y25"*)(*BEL="D6LUT"*) mux ML_24( ml_23, mu_23, CH[7], ml_24 );
(*LOC="SLICE_X0Y26"*)(*BEL="A6LUT"*) mux MU_25( mu_24, ml_24, CH[0], mu_25 );
(*LOC="SLICE_X0Y26"*)(*BEL="D6LUT"*) mux ML_25( ml_24, mu_24, CH[0], ml_25 );
(*LOC="SLICE_X0Y27"*)(*BEL="A6LUT"*) mux MU_26( mu_25, ml_25, CH[1], mu_26 );
(*LOC="SLICE_X0Y27"*)(*BEL="D6LUT"*) mux ML_26( ml_25, mu_25, CH[1], ml_26 );
(*LOC="SLICE_X0Y28"*)(*BEL="A6LUT"*) mux MU_27( mu_26, ml_26, CH[2], mu_27 );
(*LOC="SLICE_X0Y28"*)(*BEL="D6LUT"*) mux ML_27( ml_26, mu_26, CH[2], ml_27 );
(*LOC="SLICE_X1Y28"*) D_Flip_Flop DFF_2 ( mu_27, ml_27, rst, outdata1 );
(*LOC="SLICE_X0Y29"*)(*BEL="A6LUT"*) mux MU_28( mu_27, ml_27, CH[3], mu_28 );
(*LOC="SLICE_X0Y29"*)(*BEL="D6LUT"*) mux ML_28( ml_27, mu_27, CH[3], ml_28 );
(*LOC="SLICE_X0Y30"*)(*BEL="A6LUT"*) mux MU_29( mu_28, ml_28, outdata0, mu_29 );
(*LOC="SLICE_X0Y30"*)(*BEL="D6LUT"*) mux ML_29( ml_28, mu_28, outdata0, ml_29 );
(*LOC="SLICE_X0Y31"*)(*BEL="A6LUT"*) mux MU_30( mu_29, ml_29, CH[5], mu_30 );
(*LOC="SLICE_X0Y31"*)(*BEL="D6LUT"*) mux ML_30( ml_29, mu_29, CH[5], ml_30 );
(*LOC="SLICE_X0Y32"*)(*BEL="A6LUT"*) mux MU_31( mu_30, ml_30, CH[6], mu_31 );
(*LOC="SLICE_X0Y32"*)(*BEL="D6LUT"*) mux ML_31( ml_30, mu_30, CH[6], ml_31 );
(*LOC="SLICE_X0Y33"*)(*BEL="A6LUT"*) mux MU_32( mu_31, ml_31, CH[7], mu_32 );
(*LOC="SLICE_X0Y33"*)(*BEL="D6LUT"*) mux ML_32( ml_31, mu_31, CH[7], ml_32 );
(*LOC="SLICE_X1Y33"*)(*BEL="A6LUT"*) mux MU_33( mu_32, ml_32, CH[0], mu_33 );
(*LOC="SLICE_X1Y33"*)(*BEL="D6LUT"*) mux ML_33( ml_32, mu_32, CH[0], ml_33 );
(*LOC="SLICE_X1Y32"*)(*BEL="A6LUT"*) mux MU_34( mu_33, ml_33, CH[1], mu_34 );
(*LOC="SLICE_X1Y32"*)(*BEL="D6LUT"*) mux ML_34( ml_33, mu_33, CH[1], ml_34 );
(*LOC="SLICE_X1Y31"*)(*BEL="A6LUT"*) mux MU_35( mu_34, ml_34, CH[2], mu_35 );
(*LOC="SLICE_X1Y31"*)(*BEL="D6LUT"*) mux ML_35( ml_34, mu_34, CH[2], ml_35 );
(*LOC="SLICE_X1Y30"*)(*BEL="A6LUT"*) mux MU_36( mu_35, ml_35, CH[3], mu_36 );
(*LOC="SLICE_X1Y30"*)(*BEL="D6LUT"*) mux ML_36( ml_35, mu_35, CH[3], ml_36 );
(*LOC="SLICE_X1Y29"*)(*BEL="A6LUT"*) mux MU_37( mu_36, ml_36, CH[4], mu_37 );
(*LOC="SLICE_X1Y29"*)(*BEL="D6LUT"*) mux ML_37( ml_36, mu_36, CH[4], ml_37 );
(*LOC="SLICE_X1Y28"*)(*BEL="A6LUT"*) mux MU_38( mu_37, ml_37, CH[5], mu_38 );
(*LOC="SLICE_X1Y28"*)(*BEL="D6LUT"*) mux ML_38( ml_37, mu_37, CH[5], ml_38 );
(*LOC="SLICE_X1Y27"*)(*BEL="A6LUT"*) mux MU_39( mu_38, ml_38, CH[6], mu_39 );
(*LOC="SLICE_X1Y27"*)(*BEL="D6LUT"*) mux ML_39( ml_38, mu_38, CH[6], ml_39 );
(*LOC="SLICE_X1Y26"*)(*BEL="A6LUT"*) mux MU_40( mu_39, ml_39, CH[7], mu_40 );
(*LOC="SLICE_X1Y26"*)(*BEL="D6LUT"*) mux ML_40( ml_39, mu_39, CH[7], ml_40 );
(*LOC="SLICE_X1Y25"*)(*BEL="A6LUT"*) mux MU_41( mu_40, ml_40, CH[0], mu_41 );
(*LOC="SLICE_X1Y25"*)(*BEL="D6LUT"*) mux ML_41( ml_40, mu_40, CH[0], ml_41 );
(*LOC="SLICE_X1Y24"*)(*BEL="A6LUT"*) mux MU_42( mu_41, ml_41, CH[1], mu_42 );
(*LOC="SLICE_X1Y24"*)(*BEL="D6LUT"*) mux ML_42( ml_41, mu_41, CH[1], ml_42 );
(*LOC="SLICE_X1Y23"*)(*BEL="A6LUT"*) mux MU_43( mu_42, ml_42, CH[2], mu_43 );
(*LOC="SLICE_X1Y23"*)(*BEL="D6LUT"*) mux ML_43( ml_42, mu_42, CH[2], ml_43 );
(*LOC="SLICE_X1Y22"*)(*BEL="A6LUT"*) mux MU_44( mu_43, ml_43, CH[3], mu_44 );
(*LOC="SLICE_X1Y22"*)(*BEL="D6LUT"*) mux ML_44( ml_43, mu_43, CH[3], ml_44 );
(*LOC="SLICE_X1Y21"*)(*BEL="A6LUT"*) mux MU_45( mu_44, ml_44, CH[4], mu_45 );
(*LOC="SLICE_X1Y21"*)(*BEL="D6LUT"*) mux ML_45( ml_44, mu_44, CH[4], ml_45 );
(*LOC="SLICE_X1Y20"*)(*BEL="A6LUT"*) mux MU_46( mu_45, ml_45, CH[5], mu_46 );
(*LOC="SLICE_X1Y20"*)(*BEL="D6LUT"*) mux ML_46( ml_45, mu_45, CH[5], ml_46 );
(*LOC="SLICE_X1Y19"*)(*BEL="A6LUT"*) mux MU_47( mu_46, ml_46, CH[6], mu_47 );
(*LOC="SLICE_X1Y19"*)(*BEL="D6LUT"*) mux ML_47( ml_46, mu_46, CH[6], ml_47 );
(*LOC="SLICE_X1Y18"*)(*BEL="A6LUT"*) mux MU_48( mu_47, ml_47, CH[7], mu_48 );
(*LOC="SLICE_X1Y18"*)(*BEL="D6LUT"*) mux ML_48( ml_47, mu_47, CH[7], ml_48 );
(*LOC="SLICE_X1Y17"*)(*BEL="A6LUT"*) mux MU_49( mu_48, ml_48, CH[0], mu_49 );
(*LOC="SLICE_X1Y17"*)(*BEL="D6LUT"*) mux ML_49( ml_48, mu_48, CH[0], ml_49 );
(*LOC="SLICE_X1Y16"*)(*BEL="A6LUT"*) mux MU_50( mu_49, ml_49, CH[1], mu_50 );
(*LOC="SLICE_X1Y16"*)(*BEL="D6LUT"*) mux ML_50( ml_49, mu_49, CH[1], ml_50 );
(*LOC="SLICE_X1Y15"*)(*BEL="A6LUT"*) mux MU_51( mu_50, ml_50, CH[2], mu_51 );
(*LOC="SLICE_X1Y15"*)(*BEL="D6LUT"*) mux ML_51( ml_50, mu_50, CH[2], ml_51 );
(*LOC="SLICE_X1Y14"*)(*BEL="A6LUT"*) mux MU_52( mu_51, ml_51, outdata1, mu_52 );
(*LOC="SLICE_X1Y14"*)(*BEL="D6LUT"*) mux ML_52( ml_51, mu_51, outdata1, ml_52 );
(*LOC="SLICE_X1Y13"*)(*BEL="A6LUT"*) mux MU_53( mu_52, ml_52, CH[4], mu_53 );
(*LOC="SLICE_X1Y13"*)(*BEL="D6LUT"*) mux ML_53( ml_52, mu_52, CH[4], ml_53 );
(*LOC="SLICE_X1Y12"*)(*BEL="A6LUT"*) mux MU_54( mu_53, ml_53, CH[5], mu_54 );
(*LOC="SLICE_X1Y12"*)(*BEL="D6LUT"*) mux ML_54( ml_53, mu_53, CH[5], ml_54 );
(*LOC="SLICE_X1Y11"*)(*BEL="A6LUT"*) mux MU_55( mu_54, ml_54, CH[6], mu_55 );
(*LOC="SLICE_X1Y11"*)(*BEL="D6LUT"*) mux ML_55( ml_54, mu_54, CH[6], ml_55 );
(*LOC="SLICE_X1Y10"*)(*BEL="A6LUT"*) mux MU_56( mu_55, ml_55, CH[7], mu_56 );
(*LOC="SLICE_X1Y10"*)(*BEL="D6LUT"*) mux ML_56( ml_55, mu_55, CH[7], ml_56 );
(*LOC="SLICE_X1Y9"*)(*BEL="A6LUT"*) mux MU_57( mu_56, ml_56, CH[0], mu_57 );
(*LOC="SLICE_X1Y9"*)(*BEL="D6LUT"*) mux ML_57( ml_56, mu_56, CH[0], ml_57 );
(*LOC="SLICE_X1Y8"*)(*BEL="A6LUT"*) mux MU_58( mu_57, ml_57, CH[1], mu_58 );
(*LOC="SLICE_X1Y8"*)(*BEL="D6LUT"*) mux ML_58( ml_57, mu_57, CH[1], ml_58 );
(*LOC="SLICE_X1Y7"*)(*BEL="A6LUT"*) mux MU_59( mu_58, ml_58, CH[2], mu_59 );
(*LOC="SLICE_X1Y7"*)(*BEL="D6LUT"*) mux ML_59( ml_58, mu_58, CH[2], ml_59 );
(*LOC="SLICE_X1Y6"*)(*BEL="A6LUT"*) mux MU_60( mu_59, ml_59, CH[3], mu_60 );
(*LOC="SLICE_X1Y6"*)(*BEL="D6LUT"*) mux ML_60( ml_59, mu_59, CH[3], ml_60 );
(*LOC="SLICE_X1Y5"*)(*BEL="A6LUT"*) mux MU_61( mu_60, ml_60, CH[4], mu_61 );
(*LOC="SLICE_X1Y5"*)(*BEL="D6LUT"*) mux ML_61( ml_60, mu_60, CH[4], ml_61 );
(*LOC="SLICE_X1Y4"*)(*BEL="A6LUT"*) mux MU_62( mu_61, ml_61, CH[5], mu_62 );
(*LOC="SLICE_X1Y4"*)(*BEL="D6LUT"*) mux ML_62( ml_61, mu_61, CH[5], ml_62 );
(*LOC="SLICE_X1Y3"*)(*BEL="A6LUT"*) mux MU_63( mu_62, ml_62, CH[6], mu_63 );
(*LOC="SLICE_X1Y3"*)(*BEL="D6LUT"*) mux ML_63( ml_62, mu_62, CH[6], ml_63 );
(*LOC="SLICE_X1Y2"*)(*BEL="A6LUT"*) mux MU_64( mu_63, ml_63, CH[7], out1 );
(*LOC="SLICE_X1Y2"*)(*BEL="D6LUT"*) mux ML_64( ml_63, mu_63, CH[7], out2 );
(*LOC="SLICE_X0Y2"*) D_Flip_Flop DFF_3 ( out1, out2, rst, RESP );

always @ (RESP)

begin 

if(RESP == 0)
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
