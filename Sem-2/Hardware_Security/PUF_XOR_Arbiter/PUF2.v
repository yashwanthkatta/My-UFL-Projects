/* 
//HARDWARE SECURITY PROJECT
G Group 9 - P2
1. Avinash Ayalasomayajula - 0699 6946
2. Samrat Kautilya Chitimalla - 7419 2986
3. Yashwanth Katta - 3451 7972
*/

//CODE FOR ARBITER PUF 2 being used in XOR PUF

`timescale 1ns / 1ps

module PUF2(mux_in, RESP, CH, rst);

input mux_in,rst;
input [7:0]CH;

wire mux_upper_1,mux_upper_2,mux_upper_3,mux_upper_4,mux_upper_5,mux_upper_6,mux_upper_7,mux_upper_8,mux_upper_9,mux_upper_10,mux_upper_11,mux_upper_12,mux_upper_13,mux_upper_14,mux_upper_15,mux_upper_16,mux_upper_17,mux_upper_18,mux_upper_19,mux_upper_20,mux_upper_21,mux_upper_22,mux_upper_23,mux_upper_24,mux_upper_25,mux_upper_26,mux_upper_27,mux_upper_28,mux_upper_29,mux_upper_30,mux_upper_31,mux_upper_32,mux_upper_33,mux_upper_34,mux_upper_35,mux_upper_36,mux_upper_37,mux_upper_38,mux_upper_39,mux_upper_40,mux_upper_41,mux_upper_42,mux_upper_43,mux_upper_44,mux_upper_45,mux_upper_46,mux_upper_47,mux_upper_48,mux_upper_49,mux_upper_50,mux_upper_51,mux_upper_52,mux_upper_53,mux_upper_54,mux_upper_55,mux_upper_56,mux_upper_57,mux_upper_58,mux_upper_59,mux_upper_60,mux_upper_61,mux_upper_62,mux_upper_63,mux_upper_64,mux_lower_1,mux_lower_2,mux_lower_3,mux_lower_4,mux_lower_5,mux_lower_6,mux_lower_7,mux_lower_8,mux_lower_9,mux_lower_10,mux_lower_11,mux_lower_12,mux_lower_13,mux_lower_14,mux_lower_15,mux_lower_16,mux_lower_17,mux_lower_18,mux_lower_19,mux_lower_20,mux_lower_21,mux_lower_22,mux_lower_23,mux_lower_24,mux_lower_25,mux_lower_26,mux_lower_27,mux_lower_28,mux_lower_29,mux_lower_30,mux_lower_31,mux_lower_32,mux_lower_33,mux_lower_34,mux_lower_35,mux_lower_36,mux_lower_37,mux_lower_38,mux_lower_39,mux_lower_40,mux_lower_41,mux_lower_42,mux_lower_43,mux_lower_44,mux_lower_45,mux_lower_46,mux_lower_47,mux_lower_48,mux_lower_49,mux_lower_50,mux_lower_51,mux_lower_52,mux_lower_53,mux_lower_54,mux_lower_55,mux_lower_56,mux_lower_57,mux_lower_58,mux_lower_59,mux_lower_60,mux_lower_61,mux_lower_62,mux_lower_63,mux_lower_64;
wire mux_upper_out,mux_lower_out;

output RESP;

(*LOC="SLICE_X2Y2"*)(*BEL="A6LUT"*) mux Mux_upper_1( mux_in, mux_in, CH[0], mux_upper_1 );
(*LOC="SLICE_X2Y2"*)(*BEL="D6LUT"*) mux Mux_lower_1( mux_in, mux_in, CH[0], mux_lower_1 );
(*LOC="SLICE_X2Y3"*)(*BEL="A6LUT"*) mux Mux_upper_2( mux_upper_1, mux_lower_1, CH[1], mux_upper_2 );
(*LOC="SLICE_X2Y3"*)(*BEL="D6LUT"*) mux Mux_lower_2( mux_lower_1, mux_upper_1, CH[1], mux_lower_2 );
(*LOC="SLICE_X2Y4"*)(*BEL="A6LUT"*) mux Mux_upper_3( mux_upper_2, mux_lower_2, CH[2], mux_upper_3 );
(*LOC="SLICE_X2Y4"*)(*BEL="D6LUT"*) mux Mux_lower_3( mux_lower_2, mux_upper_2, CH[2], mux_lower_3 );
(*LOC="SLICE_X2Y5"*)(*BEL="A6LUT"*) mux Mux_upper_4( mux_upper_3, mux_lower_3, CH[3], mux_upper_4 );
(*LOC="SLICE_X2Y5"*)(*BEL="D6LUT"*) mux Mux_lower_4( mux_lower_3, mux_upper_3, CH[3], mux_lower_4 );
(*LOC="SLICE_X2Y6"*)(*BEL="A6LUT"*) mux Mux_upper_5( mux_upper_4, mux_lower_4, CH[4], mux_upper_5 );
(*LOC="SLICE_X2Y6"*)(*BEL="D6LUT"*) mux Mux_lower_5( mux_lower_4, mux_upper_4, CH[4], mux_lower_5 );
(*LOC="SLICE_X2Y7"*)(*BEL="A6LUT"*) mux Mux_upper_6( mux_upper_5, mux_lower_5, CH[5], mux_upper_6 );
(*LOC="SLICE_X2Y7"*)(*BEL="D6LUT"*) mux Mux_lower_6( mux_lower_5, mux_upper_5, CH[5], mux_lower_6 );
(*LOC="SLICE_X2Y8"*)(*BEL="A6LUT"*) mux Mux_upper_7( mux_upper_6, mux_lower_6, CH[6], mux_upper_7 );
(*LOC="SLICE_X2Y8"*)(*BEL="D6LUT"*) mux Mux_lower_7( mux_lower_6, mux_upper_6, CH[6], mux_lower_7 );
(*LOC="SLICE_X2Y9"*)(*BEL="A6LUT"*) mux Mux_upper_8( mux_upper_7, mux_lower_7, CH[7], mux_upper_8 );
(*LOC="SLICE_X2Y9"*)(*BEL="D6LUT"*) mux Mux_lower_8( mux_lower_7, mux_upper_7, CH[7], mux_lower_8 );
(*LOC="SLICE_X2Y10"*)(*BEL="A6LUT"*) mux Mux_upper_9( mux_upper_8, mux_lower_8, CH[0], mux_upper_9 );
(*LOC="SLICE_X2Y10"*)(*BEL="D6LUT"*) mux Mux_lower_9( mux_lower_8, mux_upper_8, CH[0], mux_lower_9 );
(*LOC="SLICE_X2Y11"*)(*BEL="A6LUT"*) mux Mux_upper_10( mux_upper_9, mux_lower_9, CH[1], mux_upper_10 );
(*LOC="SLICE_X2Y11"*)(*BEL="D6LUT"*) mux Mux_lower_10( mux_lower_9, mux_upper_9, CH[1], mux_lower_10 );
(*LOC="SLICE_X2Y12"*)(*BEL="A6LUT"*) mux Mux_upper_11( mux_upper_10, mux_lower_10, CH[2], mux_upper_11 );
(*LOC="SLICE_X2Y12"*)(*BEL="D6LUT"*) mux Mux_lower_11( mux_lower_10, mux_upper_10, CH[2], mux_lower_11 );
(*LOC="SLICE_X2Y13"*)(*BEL="A6LUT"*) mux Mux_upper_12( mux_upper_11, mux_lower_11, CH[3], mux_upper_12 );
(*LOC="SLICE_X2Y13"*)(*BEL="D6LUT"*) mux Mux_lower_12( mux_lower_11, mux_upper_11, CH[3], mux_lower_12 );
(*LOC="SLICE_X2Y14"*)(*BEL="A6LUT"*) mux Mux_upper_13( mux_upper_12, mux_lower_12, CH[4], mux_upper_13 );
(*LOC="SLICE_X2Y14"*)(*BEL="D6LUT"*) mux Mux_lower_13( mux_lower_12, mux_upper_12, CH[4], mux_lower_13 );
(*LOC="SLICE_X2Y15"*)(*BEL="A6LUT"*) mux Mux_upper_14( mux_upper_13, mux_lower_13, CH[5], mux_upper_14 );
(*LOC="SLICE_X2Y15"*)(*BEL="D6LUT"*) mux Mux_lower_14( mux_lower_13, mux_upper_13, CH[5], mux_lower_14 );
(*LOC="SLICE_X2Y16"*)(*BEL="A6LUT"*) mux Mux_upper_15( mux_upper_14, mux_lower_14, CH[6], mux_upper_15 );
(*LOC="SLICE_X2Y16"*)(*BEL="D6LUT"*) mux Mux_lower_15( mux_lower_14, mux_upper_14, CH[6], mux_lower_15 );
(*LOC="SLICE_X2Y17"*)(*BEL="A6LUT"*) mux Mux_upper_16( mux_upper_15, mux_lower_15, CH[7], mux_upper_16 );
(*LOC="SLICE_X2Y17"*)(*BEL="D6LUT"*) mux Mux_lower_16( mux_lower_15, mux_upper_15, CH[7], mux_lower_16 );
(*LOC="SLICE_X2Y18"*)(*BEL="A6LUT"*) mux Mux_upper_17( mux_upper_16, mux_lower_16, CH[0], mux_upper_17 );
(*LOC="SLICE_X2Y18"*)(*BEL="D6LUT"*) mux Mux_lower_17( mux_lower_16, mux_upper_16, CH[0], mux_lower_17 );
(*LOC="SLICE_X2Y19"*)(*BEL="A6LUT"*) mux Mux_upper_18( mux_upper_17, mux_lower_17, CH[1], mux_upper_18 );
(*LOC="SLICE_X2Y19"*)(*BEL="D6LUT"*) mux Mux_lower_18( mux_lower_17, mux_upper_17, CH[1], mux_lower_18 );
(*LOC="SLICE_X2Y20"*)(*BEL="A6LUT"*) mux Mux_upper_19( mux_upper_18, mux_lower_18, CH[2], mux_upper_19 );
(*LOC="SLICE_X2Y20"*)(*BEL="D6LUT"*) mux Mux_lower_19( mux_lower_18, mux_upper_18, CH[2], mux_lower_19 );
(*LOC="SLICE_X2Y21"*)(*BEL="A6LUT"*) mux Mux_upper_20( mux_upper_19, mux_lower_19, CH[3], mux_upper_20 );
(*LOC="SLICE_X2Y21"*)(*BEL="D6LUT"*) mux Mux_lower_20( mux_lower_19, mux_upper_19, CH[3], mux_lower_20 );
(*LOC="SLICE_X2Y22"*)(*BEL="A6LUT"*) mux Mux_upper_21( mux_upper_20, mux_lower_20, CH[4], mux_upper_21 );
(*LOC="SLICE_X2Y22"*)(*BEL="D6LUT"*) mux Mux_lower_21( mux_lower_20, mux_upper_20, CH[4], mux_lower_21 );
(*LOC="SLICE_X2Y23"*)(*BEL="A6LUT"*) mux Mux_upper_22( mux_upper_21, mux_lower_21, CH[5], mux_upper_22 );
(*LOC="SLICE_X2Y23"*)(*BEL="D6LUT"*) mux Mux_lower_22( mux_lower_21, mux_upper_21, CH[5], mux_lower_22 );
(*LOC="SLICE_X2Y24"*)(*BEL="A6LUT"*) mux Mux_upper_23( mux_upper_22, mux_lower_22, CH[6], mux_upper_23 );
(*LOC="SLICE_X2Y24"*)(*BEL="D6LUT"*) mux Mux_lower_23( mux_lower_22, mux_upper_22, CH[6], mux_lower_23 );
(*LOC="SLICE_X2Y25"*)(*BEL="A6LUT"*) mux Mux_upper_24( mux_upper_23, mux_lower_23, CH[7], mux_upper_24 );
(*LOC="SLICE_X2Y25"*)(*BEL="D6LUT"*) mux Mux_lower_24( mux_lower_23, mux_upper_23, CH[7], mux_lower_24 );
(*LOC="SLICE_X2Y26"*)(*BEL="A6LUT"*) mux Mux_upper_25( mux_upper_24, mux_lower_24, CH[0], mux_upper_25 );
(*LOC="SLICE_X2Y26"*)(*BEL="D6LUT"*) mux Mux_lower_25( mux_lower_24, mux_upper_24, CH[0], mux_lower_25 );
(*LOC="SLICE_X2Y27"*)(*BEL="A6LUT"*) mux Mux_upper_26( mux_upper_25, mux_lower_25, CH[1], mux_upper_26 );
(*LOC="SLICE_X2Y27"*)(*BEL="D6LUT"*) mux Mux_lower_26( mux_lower_25, mux_upper_25, CH[1], mux_lower_26 );
(*LOC="SLICE_X2Y28"*)(*BEL="A6LUT"*) mux Mux_upper_27( mux_upper_26, mux_lower_26, CH[2], mux_upper_27 );
(*LOC="SLICE_X2Y28"*)(*BEL="D6LUT"*) mux Mux_lower_27( mux_lower_26, mux_upper_26, CH[2], mux_lower_27 );
(*LOC="SLICE_X2Y29"*)(*BEL="A6LUT"*) mux Mux_upper_28( mux_upper_27, mux_lower_27, CH[3], mux_upper_28 );
(*LOC="SLICE_X2Y29"*)(*BEL="D6LUT"*) mux Mux_lower_28( mux_lower_27, mux_upper_27, CH[3], mux_lower_28 );
(*LOC="SLICE_X2Y30"*)(*BEL="A6LUT"*) mux Mux_upper_29( mux_upper_28, mux_lower_28, CH[4], mux_upper_29 );
(*LOC="SLICE_X2Y30"*)(*BEL="D6LUT"*) mux Mux_lower_29( mux_lower_28, mux_upper_28, CH[4], mux_lower_29 );
(*LOC="SLICE_X2Y31"*)(*BEL="A6LUT"*) mux Mux_upper_30( mux_upper_29, mux_lower_29, CH[5], mux_upper_30 );
(*LOC="SLICE_X2Y31"*)(*BEL="D6LUT"*) mux Mux_lower_30( mux_lower_29, mux_upper_29, CH[5], mux_lower_30 );
(*LOC="SLICE_X2Y32"*)(*BEL="A6LUT"*) mux Mux_upper_31( mux_upper_30, mux_lower_30, CH[6], mux_upper_31 );
(*LOC="SLICE_X2Y32"*)(*BEL="D6LUT"*) mux Mux_lower_31( mux_lower_30, mux_upper_30, CH[6], mux_lower_31 );
(*LOC="SLICE_X2Y33"*)(*BEL="A6LUT"*) mux Mux_upper_32( mux_upper_31, mux_lower_31, CH[7], mux_upper_32 );
(*LOC="SLICE_X2Y33"*)(*BEL="D6LUT"*) mux Mux_lower_32( mux_lower_31, mux_upper_31, CH[7], mux_lower_32 );
(*LOC="SLICE_X3Y33"*)(*BEL="A6LUT"*) mux Mux_upper_33( mux_upper_32, mux_lower_32, CH[0], mux_upper_33 );
(*LOC="SLICE_X3Y33"*)(*BEL="D6LUT"*) mux Mux_lower_33( mux_lower_32, mux_upper_32, CH[0], mux_lower_33 );
(*LOC="SLICE_X3Y32"*)(*BEL="A6LUT"*) mux Mux_upper_34( mux_upper_33, mux_lower_33, CH[1], mux_upper_34 );
(*LOC="SLICE_X3Y32"*)(*BEL="D6LUT"*) mux Mux_lower_34( mux_lower_33, mux_upper_33, CH[1], mux_lower_34 );
(*LOC="SLICE_X3Y31"*)(*BEL="A6LUT"*) mux Mux_upper_35( mux_upper_34, mux_lower_34, CH[2], mux_upper_35 );
(*LOC="SLICE_X3Y31"*)(*BEL="D6LUT"*) mux Mux_lower_35( mux_lower_34, mux_upper_34, CH[2], mux_lower_35 );
(*LOC="SLICE_X3Y30"*)(*BEL="A6LUT"*) mux Mux_upper_36( mux_upper_35, mux_lower_35, CH[3], mux_upper_36 );
(*LOC="SLICE_X3Y30"*)(*BEL="D6LUT"*) mux Mux_lower_36( mux_lower_35, mux_upper_35, CH[3], mux_lower_36 );
(*LOC="SLICE_X3Y29"*)(*BEL="A6LUT"*) mux Mux_upper_37( mux_upper_36, mux_lower_36, CH[4], mux_upper_37 );
(*LOC="SLICE_X3Y29"*)(*BEL="D6LUT"*) mux Mux_lower_37( mux_lower_36, mux_upper_36, CH[4], mux_lower_37 );
(*LOC="SLICE_X3Y28"*)(*BEL="A6LUT"*) mux Mux_upper_38( mux_upper_37, mux_lower_37, CH[5], mux_upper_38 );
(*LOC="SLICE_X3Y28"*)(*BEL="D6LUT"*) mux Mux_lower_38( mux_lower_37, mux_upper_37, CH[5], mux_lower_38 );
(*LOC="SLICE_X3Y27"*)(*BEL="A6LUT"*) mux Mux_upper_39( mux_upper_38, mux_lower_38, CH[6], mux_upper_39 );
(*LOC="SLICE_X3Y27"*)(*BEL="D6LUT"*) mux Mux_lower_39( mux_lower_38, mux_upper_38, CH[6], mux_lower_39 );
(*LOC="SLICE_X3Y26"*)(*BEL="A6LUT"*) mux Mux_upper_40( mux_upper_39, mux_lower_39, CH[7], mux_upper_40 );
(*LOC="SLICE_X3Y26"*)(*BEL="D6LUT"*) mux Mux_lower_40( mux_lower_39, mux_upper_39, CH[7], mux_lower_40 );
(*LOC="SLICE_X3Y25"*)(*BEL="A6LUT"*) mux Mux_upper_41( mux_upper_40, mux_lower_40, CH[0], mux_upper_41 );
(*LOC="SLICE_X3Y25"*)(*BEL="D6LUT"*) mux Mux_lower_41( mux_lower_40, mux_upper_40, CH[0], mux_lower_41 );
(*LOC="SLICE_X3Y24"*)(*BEL="A6LUT"*) mux Mux_upper_42( mux_upper_41, mux_lower_41, CH[1], mux_upper_42 );
(*LOC="SLICE_X3Y24"*)(*BEL="D6LUT"*) mux Mux_lower_42( mux_lower_41, mux_upper_41, CH[1], mux_lower_42 );
(*LOC="SLICE_X3Y23"*)(*BEL="A6LUT"*) mux Mux_upper_43( mux_upper_42, mux_lower_42, CH[2], mux_upper_43 );
(*LOC="SLICE_X3Y23"*)(*BEL="D6LUT"*) mux Mux_lower_43( mux_lower_42, mux_upper_42, CH[2], mux_lower_43 );
(*LOC="SLICE_X3Y22"*)(*BEL="A6LUT"*) mux Mux_upper_44( mux_upper_43, mux_lower_43, CH[3], mux_upper_44 );
(*LOC="SLICE_X3Y22"*)(*BEL="D6LUT"*) mux Mux_lower_44( mux_lower_43, mux_upper_43, CH[3], mux_lower_44 );
(*LOC="SLICE_X3Y21"*)(*BEL="A6LUT"*) mux Mux_upper_45( mux_upper_44, mux_lower_44, CH[4], mux_upper_45 );
(*LOC="SLICE_X3Y21"*)(*BEL="D6LUT"*) mux Mux_lower_45( mux_lower_44, mux_upper_44, CH[4], mux_lower_45 );
(*LOC="SLICE_X3Y20"*)(*BEL="A6LUT"*) mux Mux_upper_46( mux_upper_45, mux_lower_45, CH[5], mux_upper_46 );
(*LOC="SLICE_X3Y20"*)(*BEL="D6LUT"*) mux Mux_lower_46( mux_lower_45, mux_upper_45, CH[5], mux_lower_46 );
(*LOC="SLICE_X3Y19"*)(*BEL="A6LUT"*) mux Mux_upper_47( mux_upper_46, mux_lower_46, CH[6], mux_upper_47 );
(*LOC="SLICE_X3Y19"*)(*BEL="D6LUT"*) mux Mux_lower_47( mux_lower_46, mux_upper_46, CH[6], mux_lower_47 );
(*LOC="SLICE_X3Y18"*)(*BEL="A6LUT"*) mux Mux_upper_48( mux_upper_47, mux_lower_47, CH[7], mux_upper_48 );
(*LOC="SLICE_X3Y18"*)(*BEL="D6LUT"*) mux Mux_lower_48( mux_lower_47, mux_upper_47, CH[7], mux_lower_48 );
(*LOC="SLICE_X3Y17"*)(*BEL="A6LUT"*) mux Mux_upper_49( mux_upper_48, mux_lower_48, CH[0], mux_upper_49 );
(*LOC="SLICE_X3Y17"*)(*BEL="D6LUT"*) mux Mux_lower_49( mux_lower_48, mux_upper_48, CH[0], mux_lower_49 );
(*LOC="SLICE_X3Y16"*)(*BEL="A6LUT"*) mux Mux_upper_50( mux_upper_49, mux_lower_49, CH[1], mux_upper_50 );
(*LOC="SLICE_X3Y16"*)(*BEL="D6LUT"*) mux Mux_lower_50( mux_lower_49, mux_upper_49, CH[1], mux_lower_50 );
(*LOC="SLICE_X3Y15"*)(*BEL="A6LUT"*) mux Mux_upper_51( mux_upper_50, mux_lower_50, CH[2], mux_upper_51 );
(*LOC="SLICE_X3Y15"*)(*BEL="D6LUT"*) mux Mux_lower_51( mux_lower_50, mux_upper_50, CH[2], mux_lower_51 );
(*LOC="SLICE_X3Y14"*)(*BEL="A6LUT"*) mux Mux_upper_52( mux_upper_51, mux_lower_51, CH[3], mux_upper_52 );
(*LOC="SLICE_X3Y14"*)(*BEL="D6LUT"*) mux Mux_lower_52( mux_lower_51, mux_upper_51, CH[3], mux_lower_52 );
(*LOC="SLICE_X3Y13"*)(*BEL="A6LUT"*) mux Mux_upper_53( mux_upper_52, mux_lower_52, CH[4], mux_upper_53 );
(*LOC="SLICE_X3Y13"*)(*BEL="D6LUT"*) mux Mux_lower_53( mux_lower_52, mux_upper_52, CH[4], mux_lower_53 );
(*LOC="SLICE_X3Y12"*)(*BEL="A6LUT"*) mux Mux_upper_54( mux_upper_53, mux_lower_53, CH[5], mux_upper_54 );
(*LOC="SLICE_X3Y12"*)(*BEL="D6LUT"*) mux Mux_lower_54( mux_lower_53, mux_upper_53, CH[5], mux_lower_54 );
(*LOC="SLICE_X3Y11"*)(*BEL="A6LUT"*) mux Mux_upper_55( mux_upper_54, mux_lower_54, CH[6], mux_upper_55 );
(*LOC="SLICE_X3Y11"*)(*BEL="D6LUT"*) mux Mux_lower_55( mux_lower_54, mux_upper_54, CH[6], mux_lower_55 );
(*LOC="SLICE_X3Y10"*)(*BEL="A6LUT"*) mux Mux_upper_56( mux_upper_55, mux_lower_55, CH[7], mux_upper_56 );
(*LOC="SLICE_X3Y10"*)(*BEL="D6LUT"*) mux Mux_lower_56( mux_lower_55, mux_upper_55, CH[7], mux_lower_56 );
(*LOC="SLICE_X3Y9"*)(*BEL="A6LUT"*) mux Mux_upper_57( mux_upper_56, mux_lower_56, CH[0], mux_upper_57 );
(*LOC="SLICE_X3Y9"*)(*BEL="D6LUT"*) mux Mux_lower_57( mux_lower_56, mux_upper_56, CH[0], mux_lower_57 );
(*LOC="SLICE_X3Y8"*)(*BEL="A6LUT"*) mux Mux_upper_58( mux_upper_57, mux_lower_57, CH[1], mux_upper_58 );
(*LOC="SLICE_X3Y8"*)(*BEL="D6LUT"*) mux Mux_lower_58( mux_lower_57, mux_upper_57, CH[1], mux_lower_58 );
(*LOC="SLICE_X3Y7"*)(*BEL="A6LUT"*) mux Mux_upper_59( mux_upper_58, mux_lower_58, CH[2], mux_upper_59 );
(*LOC="SLICE_X3Y7"*)(*BEL="D6LUT"*) mux Mux_lower_59( mux_lower_58, mux_upper_58, CH[2], mux_lower_59 );
(*LOC="SLICE_X3Y6"*)(*BEL="A6LUT"*) mux Mux_upper_60( mux_upper_59, mux_lower_59, CH[3], mux_upper_60 );
(*LOC="SLICE_X3Y6"*)(*BEL="D6LUT"*) mux Mux_lower_60( mux_lower_59, mux_upper_59, CH[3], mux_lower_60 );
(*LOC="SLICE_X3Y5"*)(*BEL="A6LUT"*) mux Mux_upper_61( mux_upper_60, mux_lower_60, CH[4], mux_upper_61 );
(*LOC="SLICE_X3Y5"*)(*BEL="D6LUT"*) mux Mux_lower_61( mux_lower_60, mux_upper_60, CH[4], mux_lower_61 );
(*LOC="SLICE_X3Y4"*)(*BEL="A6LUT"*) mux Mux_upper_62( mux_upper_61, mux_lower_61, CH[5], mux_upper_62 );
(*LOC="SLICE_X3Y4"*)(*BEL="D6LUT"*) mux Mux_lower_62( mux_lower_61, mux_upper_61, CH[5], mux_lower_62 );
(*LOC="SLICE_X3Y3"*)(*BEL="A6LUT"*) mux Mux_upper_63( mux_upper_62, mux_lower_62, CH[6], mux_upper_63 );
(*LOC="SLICE_X3Y3"*)(*BEL="D6LUT"*) mux Mux_lower_63( mux_lower_62, mux_upper_62, CH[6], mux_lower_63 );
(*LOC="SLICE_X3Y2"*)(*BEL="A6LUT"*) mux Mux_upper_64( mux_upper_63, mux_lower_63, CH[7], mux_upper_out );
(*LOC="SLICE_X3Y2"*)(*BEL="D6LUT"*) mux Mux_lower_64( mux_lower_63, mux_upper_63, CH[7], mux_lower_out);
(*LOC="SLICE_X2Y2"*) D_Flip_flop D_Flip ( mux_upper_out, mux_lower_out, rst, RESP );

endmodule