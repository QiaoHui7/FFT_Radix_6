// Generator : SpinalHDL v1.6.4    git head : 598c18959149eb18e5eee5b0aa3eef01ecaa41a1
// Component : Radix6
// Git hash  : 790d1ed6e0be6255051a14aaa14d5b06178ac55c

`timescale 1ns/1ps 

module Radix6 (
  input      [17:0]   io_data_in_0_re,
  input      [17:0]   io_data_in_0_im,
  input      [17:0]   io_data_in_1_re,
  input      [17:0]   io_data_in_1_im,
  input      [17:0]   io_data_in_2_re,
  input      [17:0]   io_data_in_2_im,
  input      [17:0]   io_data_in_3_re,
  input      [17:0]   io_data_in_3_im,
  input      [17:0]   io_data_in_4_re,
  input      [17:0]   io_data_in_4_im,
  input      [17:0]   io_data_in_5_re,
  input      [17:0]   io_data_in_5_im,
  output     [17:0]   io_data_out_0_re,
  output     [17:0]   io_data_out_0_im,
  output     [17:0]   io_data_out_1_re,
  output     [17:0]   io_data_out_1_im,
  output     [17:0]   io_data_out_2_re,
  output     [17:0]   io_data_out_2_im,
  output     [17:0]   io_data_out_3_re,
  output     [17:0]   io_data_out_3_im,
  output     [17:0]   io_data_out_4_re,
  output     [17:0]   io_data_out_4_im,
  output     [17:0]   io_data_out_5_re,
  output     [17:0]   io_data_out_5_im,
  input               clk,
  input               reset
);

  wire       [19:0]   blka_1_io_data_in_0_re;
  wire       [19:0]   blka_1_io_data_in_0_im;
  wire       [19:0]   blks_1_io_data_in_0_re;
  wire       [19:0]   blks_1_io_data_in_0_im;
  wire       [20:0]   blka_1_io_data_out_re;
  wire       [20:0]   blka_1_io_data_out_im;
  wire       [20:0]   blks_1_io_data_out_re;
  wire       [20:0]   blks_1_io_data_out_im;
  wire       [20:0]   blkm0_io_data_out_re;
  wire       [20:0]   blkm0_io_data_out_im;
  wire       [20:0]   blkm1_io_data_out_re;
  wire       [20:0]   blkm1_io_data_out_im;
  wire       [18:0]   _zz_s11_re;
  wire       [18:0]   _zz_s11_re_1;
  wire       [18:0]   _zz_s11_im;
  wire       [18:0]   _zz_s11_im_1;
  wire       [18:0]   _zz_s12_re;
  wire       [18:0]   _zz_s12_re_1;
  wire       [18:0]   _zz_s12_im;
  wire       [18:0]   _zz_s12_im_1;
  wire       [18:0]   _zz_s13_re;
  wire       [18:0]   _zz_s13_re_1;
  wire       [18:0]   _zz_s13_im;
  wire       [18:0]   _zz_s13_im_1;
  wire       [18:0]   _zz_s14_re;
  wire       [18:0]   _zz_s14_re_1;
  wire       [18:0]   _zz_s14_im;
  wire       [18:0]   _zz_s14_im_1;
  wire       [18:0]   _zz_s15_re;
  wire       [18:0]   _zz_s15_re_1;
  wire       [18:0]   _zz_s15_im;
  wire       [18:0]   _zz_s15_im_1;
  wire       [18:0]   _zz_s16_re;
  wire       [18:0]   _zz_s16_re_1;
  wire       [18:0]   _zz_s16_im;
  wire       [18:0]   _zz_s16_im_1;
  wire       [19:0]   _zz_s21_re;
  wire       [19:0]   _zz_s21_re_1;
  wire       [19:0]   _zz_s21_im;
  wire       [19:0]   _zz_s21_im_1;
  wire       [19:0]   _zz_s22_re;
  wire       [19:0]   _zz_s22_re_1;
  wire       [19:0]   _zz_s22_im;
  wire       [19:0]   _zz_s22_im_1;
  wire       [19:0]   _zz_s23_re;
  wire       [19:0]   _zz_s23_re_1;
  wire       [19:0]   _zz_s23_im;
  wire       [19:0]   _zz_s23_im_1;
  wire       [19:0]   _zz_s24_re;
  wire       [19:0]   _zz_s24_re_1;
  wire       [19:0]   _zz_s24_im;
  wire       [19:0]   _zz_s24_im_1;
  wire       [20:0]   _zz__zz_s41_re;
  wire       [19:0]   _zz__zz_s41_re_1;
  wire       [20:0]   _zz__zz_s41_re_2;
  wire       [20:0]   _zz__zz_s41_im;
  wire       [19:0]   _zz__zz_s41_im_1;
  wire       [20:0]   _zz__zz_s41_im_2;
  wire       [3:0]    _zz_when_SInt_l131;
  wire       [2:0]    _zz_when_SInt_l137;
  wire       [3:0]    _zz_when_SInt_l131_1;
  wire       [2:0]    _zz_when_SInt_l137_1;
  wire       [17:0]   _zz_s41_re_2;
  wire       [17:0]   _zz_s41_re_3;
  wire       [17:0]   _zz_s41_im_2;
  wire       [17:0]   _zz_s41_im_3;
  wire       [20:0]   _zz__zz_s44_re;
  wire       [19:0]   _zz__zz_s44_re_1;
  wire       [20:0]   _zz__zz_s44_re_2;
  wire       [20:0]   _zz__zz_s44_im;
  wire       [19:0]   _zz__zz_s44_im_1;
  wire       [20:0]   _zz__zz_s44_im_2;
  wire       [3:0]    _zz_when_SInt_l131_2;
  wire       [2:0]    _zz_when_SInt_l137_2;
  wire       [3:0]    _zz_when_SInt_l131_3;
  wire       [2:0]    _zz_when_SInt_l137_3;
  wire       [17:0]   _zz_s44_re_2;
  wire       [17:0]   _zz_s44_re_3;
  wire       [17:0]   _zz_s44_im_2;
  wire       [17:0]   _zz_s44_im_3;
  wire       [21:0]   _zz__zz_s45_re;
  wire       [21:0]   _zz__zz_s45_re_1;
  wire       [21:0]   _zz__zz_s45_im;
  wire       [21:0]   _zz__zz_s45_im_1;
  wire       [4:0]    _zz_when_SInt_l131_4;
  wire       [3:0]    _zz_when_SInt_l137_4;
  wire       [4:0]    _zz_when_SInt_l131_5;
  wire       [3:0]    _zz_when_SInt_l137_5;
  wire       [17:0]   _zz_s45_re_2;
  wire       [17:0]   _zz_s45_re_3;
  wire       [17:0]   _zz_s45_im_2;
  wire       [17:0]   _zz_s45_im_3;
  wire       [21:0]   _zz__zz_s43_re;
  wire       [21:0]   _zz__zz_s43_re_1;
  wire       [21:0]   _zz__zz_s43_im;
  wire       [21:0]   _zz__zz_s43_im_1;
  wire       [4:0]    _zz_when_SInt_l131_6;
  wire       [3:0]    _zz_when_SInt_l137_6;
  wire       [4:0]    _zz_when_SInt_l131_7;
  wire       [3:0]    _zz_when_SInt_l137_7;
  wire       [17:0]   _zz_s43_re_2;
  wire       [17:0]   _zz_s43_re_3;
  wire       [17:0]   _zz_s43_im_2;
  wire       [17:0]   _zz_s43_im_3;
  wire       [21:0]   _zz__zz_s46_re;
  wire       [21:0]   _zz__zz_s46_re_1;
  wire       [21:0]   _zz__zz_s46_im;
  wire       [21:0]   _zz__zz_s46_im_1;
  wire       [4:0]    _zz_when_SInt_l131_8;
  wire       [3:0]    _zz_when_SInt_l137_8;
  wire       [4:0]    _zz_when_SInt_l131_9;
  wire       [3:0]    _zz_when_SInt_l137_9;
  wire       [17:0]   _zz_s46_re_2;
  wire       [17:0]   _zz_s46_re_3;
  wire       [17:0]   _zz_s46_im_2;
  wire       [17:0]   _zz_s46_im_3;
  wire       [21:0]   _zz__zz_s42_re;
  wire       [21:0]   _zz__zz_s42_re_1;
  wire       [21:0]   _zz__zz_s42_im;
  wire       [21:0]   _zz__zz_s42_im_1;
  wire       [4:0]    _zz_when_SInt_l131_10;
  wire       [3:0]    _zz_when_SInt_l137_10;
  wire       [4:0]    _zz_when_SInt_l131_11;
  wire       [3:0]    _zz_when_SInt_l137_11;
  wire       [17:0]   _zz_s42_re_2;
  wire       [17:0]   _zz_s42_re_3;
  wire       [17:0]   _zz_s42_im_2;
  wire       [17:0]   _zz_s42_im_3;
  wire       [17:0]   vreset0_re;
  wire       [17:0]   vreset0_im;
  wire       [18:0]   vreset1_re;
  wire       [18:0]   vreset1_im;
  wire       [19:0]   vreset2_re;
  wire       [19:0]   vreset2_im;
  wire       [20:0]   vreset3_re;
  wire       [20:0]   vreset3_im;
  wire       [21:0]   vreset4_re;
  wire       [21:0]   vreset4_im;
  reg        [18:0]   s11_re;
  reg        [18:0]   s11_im;
  reg        [18:0]   s12_re;
  reg        [18:0]   s12_im;
  reg        [18:0]   s13_re;
  reg        [18:0]   s13_im;
  reg        [18:0]   s14_re;
  reg        [18:0]   s14_im;
  reg        [18:0]   s15_re;
  reg        [18:0]   s15_im;
  reg        [18:0]   s16_re;
  reg        [18:0]   s16_im;
  reg        [19:0]   s21_re;
  reg        [19:0]   s21_im;
  reg        [19:0]   s22_re;
  reg        [19:0]   s22_im;
  reg        [19:0]   s23_re;
  reg        [19:0]   s23_im;
  reg        [19:0]   s24_re;
  reg        [19:0]   s24_im;
  reg        [18:0]   s11d_re;
  reg        [18:0]   s11d_im;
  reg        [18:0]   s12d_re;
  reg        [18:0]   s12d_im;
  reg        [20:0]   s31_re;
  reg        [20:0]   s31_im;
  reg        [20:0]   s32_re;
  reg        [20:0]   s32_im;
  reg        [20:0]   s33_re;
  reg        [20:0]   s33_im;
  reg        [20:0]   s34_re;
  reg        [20:0]   s34_im;
  reg        [18:0]   s11d_delay_1_re;
  reg        [18:0]   s11d_delay_1_im;
  reg        [18:0]   s11d_delay_2_re;
  reg        [18:0]   s11d_delay_2_im;
  reg        [18:0]   s11dd_re;
  reg        [18:0]   s11dd_im;
  reg        [18:0]   s12d_delay_1_re;
  reg        [18:0]   s12d_delay_1_im;
  reg        [18:0]   s12d_delay_2_re;
  reg        [18:0]   s12d_delay_2_im;
  reg        [18:0]   s12dd_re;
  reg        [18:0]   s12dd_im;
  reg        [19:0]   s21_delay_1_re;
  reg        [19:0]   s21_delay_1_im;
  reg        [19:0]   s21_delay_2_re;
  reg        [19:0]   s21_delay_2_im;
  reg        [19:0]   s21d_re;
  reg        [19:0]   s21d_im;
  reg        [19:0]   s24_delay_1_re;
  reg        [19:0]   s24_delay_1_im;
  reg        [19:0]   s24_delay_2_re;
  reg        [19:0]   s24_delay_2_im;
  reg        [19:0]   s24d_re;
  reg        [19:0]   s24d_im;
  reg        [17:0]   s41_re;
  reg        [17:0]   s41_im;
  reg        [17:0]   s42_re;
  reg        [17:0]   s42_im;
  reg        [17:0]   s43_re;
  reg        [17:0]   s43_im;
  reg        [17:0]   s44_re;
  reg        [17:0]   s44_im;
  reg        [17:0]   s45_re;
  reg        [17:0]   s45_im;
  reg        [17:0]   s46_re;
  reg        [17:0]   s46_im;
  wire       [20:0]   _zz_s41_re;
  wire       [20:0]   _zz_s41_im;
  reg        [17:0]   _zz_s41_re_1;
  wire                when_SInt_l130;
  wire                when_SInt_l131;
  wire                when_SInt_l137;
  reg        [17:0]   _zz_s41_im_1;
  wire                when_SInt_l130_1;
  wire                when_SInt_l131_1;
  wire                when_SInt_l137_1;
  wire       [20:0]   _zz_s44_re;
  wire       [20:0]   _zz_s44_im;
  reg        [17:0]   _zz_s44_re_1;
  wire                when_SInt_l130_2;
  wire                when_SInt_l131_2;
  wire                when_SInt_l137_2;
  reg        [17:0]   _zz_s44_im_1;
  wire                when_SInt_l130_3;
  wire                when_SInt_l131_3;
  wire                when_SInt_l137_3;
  wire       [21:0]   _zz_s45_re;
  wire       [21:0]   _zz_s45_im;
  reg        [17:0]   _zz_s45_re_1;
  wire                when_SInt_l130_4;
  wire                when_SInt_l131_4;
  wire                when_SInt_l137_4;
  reg        [17:0]   _zz_s45_im_1;
  wire                when_SInt_l130_5;
  wire                when_SInt_l131_5;
  wire                when_SInt_l137_5;
  wire       [21:0]   _zz_s43_re;
  wire       [21:0]   _zz_s43_im;
  reg        [17:0]   _zz_s43_re_1;
  wire                when_SInt_l130_6;
  wire                when_SInt_l131_6;
  wire                when_SInt_l137_6;
  reg        [17:0]   _zz_s43_im_1;
  wire                when_SInt_l130_7;
  wire                when_SInt_l131_7;
  wire                when_SInt_l137_7;
  wire       [21:0]   _zz_s46_re;
  wire       [21:0]   _zz_s46_im;
  reg        [17:0]   _zz_s46_re_1;
  wire                when_SInt_l130_8;
  wire                when_SInt_l131_8;
  wire                when_SInt_l137_8;
  reg        [17:0]   _zz_s46_im_1;
  wire                when_SInt_l130_9;
  wire                when_SInt_l131_9;
  wire                when_SInt_l137_9;
  wire       [21:0]   _zz_s42_re;
  wire       [21:0]   _zz_s42_im;
  reg        [17:0]   _zz_s42_re_1;
  wire                when_SInt_l130_10;
  wire                when_SInt_l131_10;
  wire                when_SInt_l137_10;
  reg        [17:0]   _zz_s42_im_1;
  wire                when_SInt_l130_11;
  wire                when_SInt_l131_11;
  wire                when_SInt_l137_11;

  assign _zz_s11_re = {io_data_in_0_re[17],io_data_in_0_re};
  assign _zz_s11_re_1 = {io_data_in_3_re[17],io_data_in_3_re};
  assign _zz_s11_im = {io_data_in_0_im[17],io_data_in_0_im};
  assign _zz_s11_im_1 = {io_data_in_3_im[17],io_data_in_3_im};
  assign _zz_s12_re = {io_data_in_0_re[17],io_data_in_0_re};
  assign _zz_s12_re_1 = {io_data_in_3_re[17],io_data_in_3_re};
  assign _zz_s12_im = {io_data_in_0_im[17],io_data_in_0_im};
  assign _zz_s12_im_1 = {io_data_in_3_im[17],io_data_in_3_im};
  assign _zz_s13_re = {io_data_in_1_re[17],io_data_in_1_re};
  assign _zz_s13_re_1 = {io_data_in_4_re[17],io_data_in_4_re};
  assign _zz_s13_im = {io_data_in_1_im[17],io_data_in_1_im};
  assign _zz_s13_im_1 = {io_data_in_4_im[17],io_data_in_4_im};
  assign _zz_s14_re = {io_data_in_1_re[17],io_data_in_1_re};
  assign _zz_s14_re_1 = {io_data_in_4_re[17],io_data_in_4_re};
  assign _zz_s14_im = {io_data_in_1_im[17],io_data_in_1_im};
  assign _zz_s14_im_1 = {io_data_in_4_im[17],io_data_in_4_im};
  assign _zz_s15_re = {io_data_in_2_re[17],io_data_in_2_re};
  assign _zz_s15_re_1 = {io_data_in_5_re[17],io_data_in_5_re};
  assign _zz_s15_im = {io_data_in_2_im[17],io_data_in_2_im};
  assign _zz_s15_im_1 = {io_data_in_5_im[17],io_data_in_5_im};
  assign _zz_s16_re = {io_data_in_2_re[17],io_data_in_2_re};
  assign _zz_s16_re_1 = {io_data_in_5_re[17],io_data_in_5_re};
  assign _zz_s16_im = {io_data_in_2_im[17],io_data_in_2_im};
  assign _zz_s16_im_1 = {io_data_in_5_im[17],io_data_in_5_im};
  assign _zz_s21_re = {s13_re[18],s13_re};
  assign _zz_s21_re_1 = {s15_re[18],s15_re};
  assign _zz_s21_im = {s13_im[18],s13_im};
  assign _zz_s21_im_1 = {s15_im[18],s15_im};
  assign _zz_s22_re = {s13_re[18],s13_re};
  assign _zz_s22_re_1 = {s15_re[18],s15_re};
  assign _zz_s22_im = {s13_im[18],s13_im};
  assign _zz_s22_im_1 = {s15_im[18],s15_im};
  assign _zz_s23_re = {s14_re[18],s14_re};
  assign _zz_s23_re_1 = {s16_re[18],s16_re};
  assign _zz_s23_im = {s14_im[18],s14_im};
  assign _zz_s23_im_1 = {s16_im[18],s16_im};
  assign _zz_s24_re = {s14_re[18],s14_re};
  assign _zz_s24_re_1 = {s16_re[18],s16_re};
  assign _zz_s24_im = {s14_im[18],s14_im};
  assign _zz_s24_im_1 = {s16_im[18],s16_im};
  assign _zz__zz_s41_re_1 = {s11dd_re[18],s11dd_re};
  assign _zz__zz_s41_re = {{1{_zz__zz_s41_re_1[19]}}, _zz__zz_s41_re_1};
  assign _zz__zz_s41_re_2 = {s21d_re[19],s21d_re};
  assign _zz__zz_s41_im_1 = {s11dd_im[18],s11dd_im};
  assign _zz__zz_s41_im = {{1{_zz__zz_s41_im_1[19]}}, _zz__zz_s41_im_1};
  assign _zz__zz_s41_im_2 = {s21d_im[19],s21d_im};
  assign _zz_when_SInt_l131 = _zz_s41_re[20 : 17];
  assign _zz_when_SInt_l137 = _zz_s41_re[19 : 17];
  assign _zz_when_SInt_l131_1 = _zz_s41_im[20 : 17];
  assign _zz_when_SInt_l137_1 = _zz_s41_im[19 : 17];
  assign _zz_s41_re_2 = 18'h20000;
  assign _zz_s41_re_3 = 18'h20001;
  assign _zz_s41_im_2 = 18'h20000;
  assign _zz_s41_im_3 = 18'h20001;
  assign _zz__zz_s44_re_1 = {s12dd_re[18],s12dd_re};
  assign _zz__zz_s44_re = {{1{_zz__zz_s44_re_1[19]}}, _zz__zz_s44_re_1};
  assign _zz__zz_s44_re_2 = {s24d_re[19],s24d_re};
  assign _zz__zz_s44_im_1 = {s12dd_im[18],s12dd_im};
  assign _zz__zz_s44_im = {{1{_zz__zz_s44_im_1[19]}}, _zz__zz_s44_im_1};
  assign _zz__zz_s44_im_2 = {s24d_im[19],s24d_im};
  assign _zz_when_SInt_l131_2 = _zz_s44_re[20 : 17];
  assign _zz_when_SInt_l137_2 = _zz_s44_re[19 : 17];
  assign _zz_when_SInt_l131_3 = _zz_s44_im[20 : 17];
  assign _zz_when_SInt_l137_3 = _zz_s44_im[19 : 17];
  assign _zz_s44_re_2 = 18'h20000;
  assign _zz_s44_re_3 = 18'h20001;
  assign _zz_s44_im_2 = 18'h20000;
  assign _zz_s44_im_3 = 18'h20001;
  assign _zz__zz_s45_re = {s32_re[20],s32_re};
  assign _zz__zz_s45_re_1 = {s34_re[20],s34_re};
  assign _zz__zz_s45_im = {s32_im[20],s32_im};
  assign _zz__zz_s45_im_1 = {s34_im[20],s34_im};
  assign _zz_when_SInt_l131_4 = _zz_s45_re[21 : 17];
  assign _zz_when_SInt_l137_4 = _zz_s45_re[20 : 17];
  assign _zz_when_SInt_l131_5 = _zz_s45_im[21 : 17];
  assign _zz_when_SInt_l137_5 = _zz_s45_im[20 : 17];
  assign _zz_s45_re_2 = 18'h20000;
  assign _zz_s45_re_3 = 18'h20001;
  assign _zz_s45_im_2 = 18'h20000;
  assign _zz_s45_im_3 = 18'h20001;
  assign _zz__zz_s43_re = {s32_re[20],s32_re};
  assign _zz__zz_s43_re_1 = {s34_re[20],s34_re};
  assign _zz__zz_s43_im = {s32_im[20],s32_im};
  assign _zz__zz_s43_im_1 = {s34_im[20],s34_im};
  assign _zz_when_SInt_l131_6 = _zz_s43_re[21 : 17];
  assign _zz_when_SInt_l137_6 = _zz_s43_re[20 : 17];
  assign _zz_when_SInt_l131_7 = _zz_s43_im[21 : 17];
  assign _zz_when_SInt_l137_7 = _zz_s43_im[20 : 17];
  assign _zz_s43_re_2 = 18'h20000;
  assign _zz_s43_re_3 = 18'h20001;
  assign _zz_s43_im_2 = 18'h20000;
  assign _zz_s43_im_3 = 18'h20001;
  assign _zz__zz_s46_re = {s31_re[20],s31_re};
  assign _zz__zz_s46_re_1 = {s33_re[20],s33_re};
  assign _zz__zz_s46_im = {s31_im[20],s31_im};
  assign _zz__zz_s46_im_1 = {s33_im[20],s33_im};
  assign _zz_when_SInt_l131_8 = _zz_s46_re[21 : 17];
  assign _zz_when_SInt_l137_8 = _zz_s46_re[20 : 17];
  assign _zz_when_SInt_l131_9 = _zz_s46_im[21 : 17];
  assign _zz_when_SInt_l137_9 = _zz_s46_im[20 : 17];
  assign _zz_s46_re_2 = 18'h20000;
  assign _zz_s46_re_3 = 18'h20001;
  assign _zz_s46_im_2 = 18'h20000;
  assign _zz_s46_im_3 = 18'h20001;
  assign _zz__zz_s42_re = {s31_re[20],s31_re};
  assign _zz__zz_s42_re_1 = {s33_re[20],s33_re};
  assign _zz__zz_s42_im = {s31_im[20],s31_im};
  assign _zz__zz_s42_im_1 = {s33_im[20],s33_im};
  assign _zz_when_SInt_l131_10 = _zz_s42_re[21 : 17];
  assign _zz_when_SInt_l137_10 = _zz_s42_re[20 : 17];
  assign _zz_when_SInt_l131_11 = _zz_s42_im[21 : 17];
  assign _zz_when_SInt_l137_11 = _zz_s42_im[20 : 17];
  assign _zz_s42_re_2 = 18'h20000;
  assign _zz_s42_re_3 = 18'h20001;
  assign _zz_s42_im_2 = 18'h20000;
  assign _zz_s42_im_3 = 18'h20001;
  blka blka_1 (
    .io_data_in_0_re    (blka_1_io_data_in_0_re[19:0]  ), //i
    .io_data_in_0_im    (blka_1_io_data_in_0_im[19:0]  ), //i
    .io_data_in_1_re    (s24_re[19:0]                  ), //i
    .io_data_in_1_im    (s24_im[19:0]                  ), //i
    .io_data_out_re     (blka_1_io_data_out_re[20:0]   ), //o
    .io_data_out_im     (blka_1_io_data_out_im[20:0]   ), //o
    .clk                (clk                           ), //i
    .reset              (reset                         )  //i
  );
  blks blks_1 (
    .io_data_in_0_re    (blks_1_io_data_in_0_re[19:0]  ), //i
    .io_data_in_0_im    (blks_1_io_data_in_0_im[19:0]  ), //i
    .io_data_in_1_re    (s21_re[19:0]                  ), //i
    .io_data_in_1_im    (s21_im[19:0]                  ), //i
    .io_data_out_re     (blks_1_io_data_out_re[20:0]   ), //o
    .io_data_out_im     (blks_1_io_data_out_im[20:0]   ), //o
    .clk                (clk                           ), //i
    .reset              (reset                         )  //i
  );
  blkm blkm0 (
    .io_data_in_re     (s23_re[19:0]                ), //i
    .io_data_in_im     (s23_im[19:0]                ), //i
    .io_data_out_re    (blkm0_io_data_out_re[20:0]  ), //o
    .io_data_out_im    (blkm0_io_data_out_im[20:0]  ), //o
    .clk               (clk                         ), //i
    .reset             (reset                       )  //i
  );
  blkm blkm1 (
    .io_data_in_re     (s22_re[19:0]                ), //i
    .io_data_in_im     (s22_im[19:0]                ), //i
    .io_data_out_re    (blkm1_io_data_out_re[20:0]  ), //o
    .io_data_out_im    (blkm1_io_data_out_im[20:0]  ), //o
    .clk               (clk                         ), //i
    .reset             (reset                       )  //i
  );
  assign vreset0_re = 18'h0;
  assign vreset0_im = 18'h0;
  assign vreset1_re = 19'h0;
  assign vreset1_im = 19'h0;
  assign vreset2_re = 20'h0;
  assign vreset2_im = 20'h0;
  assign vreset3_re = 21'h0;
  assign vreset3_im = 21'h0;
  assign vreset4_re = 22'h0;
  assign vreset4_im = 22'h0;
  assign blka_1_io_data_in_0_re = {{1{s12d_re[18]}}, s12d_re};
  assign blka_1_io_data_in_0_im = {{1{s12d_im[18]}}, s12d_im};
  assign blks_1_io_data_in_0_re = {{1{s11d_re[18]}}, s11d_re};
  assign blks_1_io_data_in_0_im = {{1{s11d_im[18]}}, s11d_im};
  assign _zz_s41_re = ($signed(_zz__zz_s41_re) + $signed(_zz__zz_s41_re_2));
  assign _zz_s41_im = ($signed(_zz__zz_s41_im) + $signed(_zz__zz_s41_im_2));
  assign when_SInt_l130 = _zz_s41_re[20];
  assign when_SInt_l131 = (! (&_zz_when_SInt_l131));
  always @(*) begin
    if(when_SInt_l130) begin
      if(when_SInt_l131) begin
        _zz_s41_re_1 = 18'h20000;
      end else begin
        _zz_s41_re_1 = _zz_s41_re[17 : 0];
      end
    end else begin
      if(when_SInt_l137) begin
        _zz_s41_re_1 = 18'h1ffff;
      end else begin
        _zz_s41_re_1 = _zz_s41_re[17 : 0];
      end
    end
  end

  assign when_SInt_l137 = (|_zz_when_SInt_l137);
  assign when_SInt_l130_1 = _zz_s41_im[20];
  assign when_SInt_l131_1 = (! (&_zz_when_SInt_l131_1));
  always @(*) begin
    if(when_SInt_l130_1) begin
      if(when_SInt_l131_1) begin
        _zz_s41_im_1 = 18'h20000;
      end else begin
        _zz_s41_im_1 = _zz_s41_im[17 : 0];
      end
    end else begin
      if(when_SInt_l137_1) begin
        _zz_s41_im_1 = 18'h1ffff;
      end else begin
        _zz_s41_im_1 = _zz_s41_im[17 : 0];
      end
    end
  end

  assign when_SInt_l137_1 = (|_zz_when_SInt_l137_1);
  assign _zz_s44_re = ($signed(_zz__zz_s44_re) - $signed(_zz__zz_s44_re_2));
  assign _zz_s44_im = ($signed(_zz__zz_s44_im) - $signed(_zz__zz_s44_im_2));
  assign when_SInt_l130_2 = _zz_s44_re[20];
  assign when_SInt_l131_2 = (! (&_zz_when_SInt_l131_2));
  always @(*) begin
    if(when_SInt_l130_2) begin
      if(when_SInt_l131_2) begin
        _zz_s44_re_1 = 18'h20000;
      end else begin
        _zz_s44_re_1 = _zz_s44_re[17 : 0];
      end
    end else begin
      if(when_SInt_l137_2) begin
        _zz_s44_re_1 = 18'h1ffff;
      end else begin
        _zz_s44_re_1 = _zz_s44_re[17 : 0];
      end
    end
  end

  assign when_SInt_l137_2 = (|_zz_when_SInt_l137_2);
  assign when_SInt_l130_3 = _zz_s44_im[20];
  assign when_SInt_l131_3 = (! (&_zz_when_SInt_l131_3));
  always @(*) begin
    if(when_SInt_l130_3) begin
      if(when_SInt_l131_3) begin
        _zz_s44_im_1 = 18'h20000;
      end else begin
        _zz_s44_im_1 = _zz_s44_im[17 : 0];
      end
    end else begin
      if(when_SInt_l137_3) begin
        _zz_s44_im_1 = 18'h1ffff;
      end else begin
        _zz_s44_im_1 = _zz_s44_im[17 : 0];
      end
    end
  end

  assign when_SInt_l137_3 = (|_zz_when_SInt_l137_3);
  assign _zz_s45_re = ($signed(_zz__zz_s45_re) + $signed(_zz__zz_s45_re_1));
  assign _zz_s45_im = ($signed(_zz__zz_s45_im) + $signed(_zz__zz_s45_im_1));
  assign when_SInt_l130_4 = _zz_s45_re[21];
  assign when_SInt_l131_4 = (! (&_zz_when_SInt_l131_4));
  always @(*) begin
    if(when_SInt_l130_4) begin
      if(when_SInt_l131_4) begin
        _zz_s45_re_1 = 18'h20000;
      end else begin
        _zz_s45_re_1 = _zz_s45_re[17 : 0];
      end
    end else begin
      if(when_SInt_l137_4) begin
        _zz_s45_re_1 = 18'h1ffff;
      end else begin
        _zz_s45_re_1 = _zz_s45_re[17 : 0];
      end
    end
  end

  assign when_SInt_l137_4 = (|_zz_when_SInt_l137_4);
  assign when_SInt_l130_5 = _zz_s45_im[21];
  assign when_SInt_l131_5 = (! (&_zz_when_SInt_l131_5));
  always @(*) begin
    if(when_SInt_l130_5) begin
      if(when_SInt_l131_5) begin
        _zz_s45_im_1 = 18'h20000;
      end else begin
        _zz_s45_im_1 = _zz_s45_im[17 : 0];
      end
    end else begin
      if(when_SInt_l137_5) begin
        _zz_s45_im_1 = 18'h1ffff;
      end else begin
        _zz_s45_im_1 = _zz_s45_im[17 : 0];
      end
    end
  end

  assign when_SInt_l137_5 = (|_zz_when_SInt_l137_5);
  assign _zz_s43_re = ($signed(_zz__zz_s43_re) - $signed(_zz__zz_s43_re_1));
  assign _zz_s43_im = ($signed(_zz__zz_s43_im) - $signed(_zz__zz_s43_im_1));
  assign when_SInt_l130_6 = _zz_s43_re[21];
  assign when_SInt_l131_6 = (! (&_zz_when_SInt_l131_6));
  always @(*) begin
    if(when_SInt_l130_6) begin
      if(when_SInt_l131_6) begin
        _zz_s43_re_1 = 18'h20000;
      end else begin
        _zz_s43_re_1 = _zz_s43_re[17 : 0];
      end
    end else begin
      if(when_SInt_l137_6) begin
        _zz_s43_re_1 = 18'h1ffff;
      end else begin
        _zz_s43_re_1 = _zz_s43_re[17 : 0];
      end
    end
  end

  assign when_SInt_l137_6 = (|_zz_when_SInt_l137_6);
  assign when_SInt_l130_7 = _zz_s43_im[21];
  assign when_SInt_l131_7 = (! (&_zz_when_SInt_l131_7));
  always @(*) begin
    if(when_SInt_l130_7) begin
      if(when_SInt_l131_7) begin
        _zz_s43_im_1 = 18'h20000;
      end else begin
        _zz_s43_im_1 = _zz_s43_im[17 : 0];
      end
    end else begin
      if(when_SInt_l137_7) begin
        _zz_s43_im_1 = 18'h1ffff;
      end else begin
        _zz_s43_im_1 = _zz_s43_im[17 : 0];
      end
    end
  end

  assign when_SInt_l137_7 = (|_zz_when_SInt_l137_7);
  assign _zz_s46_re = ($signed(_zz__zz_s46_re) + $signed(_zz__zz_s46_re_1));
  assign _zz_s46_im = ($signed(_zz__zz_s46_im) + $signed(_zz__zz_s46_im_1));
  assign when_SInt_l130_8 = _zz_s46_re[21];
  assign when_SInt_l131_8 = (! (&_zz_when_SInt_l131_8));
  always @(*) begin
    if(when_SInt_l130_8) begin
      if(when_SInt_l131_8) begin
        _zz_s46_re_1 = 18'h20000;
      end else begin
        _zz_s46_re_1 = _zz_s46_re[17 : 0];
      end
    end else begin
      if(when_SInt_l137_8) begin
        _zz_s46_re_1 = 18'h1ffff;
      end else begin
        _zz_s46_re_1 = _zz_s46_re[17 : 0];
      end
    end
  end

  assign when_SInt_l137_8 = (|_zz_when_SInt_l137_8);
  assign when_SInt_l130_9 = _zz_s46_im[21];
  assign when_SInt_l131_9 = (! (&_zz_when_SInt_l131_9));
  always @(*) begin
    if(when_SInt_l130_9) begin
      if(when_SInt_l131_9) begin
        _zz_s46_im_1 = 18'h20000;
      end else begin
        _zz_s46_im_1 = _zz_s46_im[17 : 0];
      end
    end else begin
      if(when_SInt_l137_9) begin
        _zz_s46_im_1 = 18'h1ffff;
      end else begin
        _zz_s46_im_1 = _zz_s46_im[17 : 0];
      end
    end
  end

  assign when_SInt_l137_9 = (|_zz_when_SInt_l137_9);
  assign _zz_s42_re = ($signed(_zz__zz_s42_re) - $signed(_zz__zz_s42_re_1));
  assign _zz_s42_im = ($signed(_zz__zz_s42_im) - $signed(_zz__zz_s42_im_1));
  assign when_SInt_l130_10 = _zz_s42_re[21];
  assign when_SInt_l131_10 = (! (&_zz_when_SInt_l131_10));
  always @(*) begin
    if(when_SInt_l130_10) begin
      if(when_SInt_l131_10) begin
        _zz_s42_re_1 = 18'h20000;
      end else begin
        _zz_s42_re_1 = _zz_s42_re[17 : 0];
      end
    end else begin
      if(when_SInt_l137_10) begin
        _zz_s42_re_1 = 18'h1ffff;
      end else begin
        _zz_s42_re_1 = _zz_s42_re[17 : 0];
      end
    end
  end

  assign when_SInt_l137_10 = (|_zz_when_SInt_l137_10);
  assign when_SInt_l130_11 = _zz_s42_im[21];
  assign when_SInt_l131_11 = (! (&_zz_when_SInt_l131_11));
  always @(*) begin
    if(when_SInt_l130_11) begin
      if(when_SInt_l131_11) begin
        _zz_s42_im_1 = 18'h20000;
      end else begin
        _zz_s42_im_1 = _zz_s42_im[17 : 0];
      end
    end else begin
      if(when_SInt_l137_11) begin
        _zz_s42_im_1 = 18'h1ffff;
      end else begin
        _zz_s42_im_1 = _zz_s42_im[17 : 0];
      end
    end
  end

  assign when_SInt_l137_11 = (|_zz_when_SInt_l137_11);
  assign io_data_out_0_re = s41_re;
  assign io_data_out_0_im = s41_im;
  assign io_data_out_1_re = s42_re;
  assign io_data_out_1_im = s42_im;
  assign io_data_out_2_re = s43_re;
  assign io_data_out_2_im = s43_im;
  assign io_data_out_3_re = s44_re;
  assign io_data_out_3_im = s44_im;
  assign io_data_out_4_re = s45_re;
  assign io_data_out_4_im = s45_im;
  assign io_data_out_5_re = s46_re;
  assign io_data_out_5_im = s46_im;
  always @(posedge clk or posedge reset) begin
    if(reset) begin
      s11_re <= vreset1_re;
      s11_im <= vreset1_im;
      s12_re <= vreset1_re;
      s12_im <= vreset1_im;
      s13_re <= vreset1_re;
      s13_im <= vreset1_im;
      s14_re <= vreset1_re;
      s14_im <= vreset1_im;
      s15_re <= vreset1_re;
      s15_im <= vreset1_im;
      s16_re <= vreset1_re;
      s16_im <= vreset1_im;
      s21_re <= vreset2_re;
      s21_im <= vreset2_im;
      s22_re <= vreset2_re;
      s22_im <= vreset2_im;
      s23_re <= vreset2_re;
      s23_im <= vreset2_im;
      s24_re <= vreset2_re;
      s24_im <= vreset2_im;
      s31_re <= vreset3_re;
      s31_im <= vreset3_im;
      s32_re <= vreset3_re;
      s32_im <= vreset3_im;
      s33_re <= vreset3_re;
      s33_im <= vreset3_im;
      s34_re <= vreset3_re;
      s34_im <= vreset3_im;
      s41_re <= vreset0_re;
      s41_im <= vreset0_im;
      s42_re <= vreset0_re;
      s42_im <= vreset0_im;
      s43_re <= vreset0_re;
      s43_im <= vreset0_im;
      s44_re <= vreset0_re;
      s44_im <= vreset0_im;
      s45_re <= vreset0_re;
      s45_im <= vreset0_im;
      s46_re <= vreset0_re;
      s46_im <= vreset0_im;
    end else begin
      s11_re <= ($signed(_zz_s11_re) + $signed(_zz_s11_re_1));
      s11_im <= ($signed(_zz_s11_im) + $signed(_zz_s11_im_1));
      s12_re <= ($signed(_zz_s12_re) - $signed(_zz_s12_re_1));
      s12_im <= ($signed(_zz_s12_im) - $signed(_zz_s12_im_1));
      s13_re <= ($signed(_zz_s13_re) + $signed(_zz_s13_re_1));
      s13_im <= ($signed(_zz_s13_im) + $signed(_zz_s13_im_1));
      s14_re <= ($signed(_zz_s14_re) - $signed(_zz_s14_re_1));
      s14_im <= ($signed(_zz_s14_im) - $signed(_zz_s14_im_1));
      s15_re <= ($signed(_zz_s15_re) + $signed(_zz_s15_re_1));
      s15_im <= ($signed(_zz_s15_im) + $signed(_zz_s15_im_1));
      s16_re <= ($signed(_zz_s16_re) - $signed(_zz_s16_re_1));
      s16_im <= ($signed(_zz_s16_im) - $signed(_zz_s16_im_1));
      s21_re <= ($signed(_zz_s21_re) + $signed(_zz_s21_re_1));
      s21_im <= ($signed(_zz_s21_im) + $signed(_zz_s21_im_1));
      s22_re <= ($signed(_zz_s22_re) - $signed(_zz_s22_re_1));
      s22_im <= ($signed(_zz_s22_im) - $signed(_zz_s22_im_1));
      s23_re <= ($signed(_zz_s23_re) + $signed(_zz_s23_re_1));
      s23_im <= ($signed(_zz_s23_im) + $signed(_zz_s23_im_1));
      s24_re <= ($signed(_zz_s24_re) - $signed(_zz_s24_re_1));
      s24_im <= ($signed(_zz_s24_im) - $signed(_zz_s24_im_1));
      s31_re <= blka_1_io_data_out_re;
      s31_im <= blka_1_io_data_out_im;
      s32_re <= blks_1_io_data_out_re;
      s32_im <= blks_1_io_data_out_im;
      s33_re <= blkm0_io_data_out_re;
      s33_im <= blkm0_io_data_out_im;
      s34_re <= blkm1_io_data_out_re;
      s34_im <= blkm1_io_data_out_im;
      s41_re <= (($signed(_zz_s41_re_1) == $signed(_zz_s41_re_2)) ? _zz_s41_re_3 : _zz_s41_re_1);
      s41_im <= (($signed(_zz_s41_im_1) == $signed(_zz_s41_im_2)) ? _zz_s41_im_3 : _zz_s41_im_1);
      s44_re <= (($signed(_zz_s44_re_1) == $signed(_zz_s44_re_2)) ? _zz_s44_re_3 : _zz_s44_re_1);
      s44_im <= (($signed(_zz_s44_im_1) == $signed(_zz_s44_im_2)) ? _zz_s44_im_3 : _zz_s44_im_1);
      s45_re <= (($signed(_zz_s45_re_1) == $signed(_zz_s45_re_2)) ? _zz_s45_re_3 : _zz_s45_re_1);
      s45_im <= (($signed(_zz_s45_im_1) == $signed(_zz_s45_im_2)) ? _zz_s45_im_3 : _zz_s45_im_1);
      s43_re <= (($signed(_zz_s43_re_1) == $signed(_zz_s43_re_2)) ? _zz_s43_re_3 : _zz_s43_re_1);
      s43_im <= (($signed(_zz_s43_im_1) == $signed(_zz_s43_im_2)) ? _zz_s43_im_3 : _zz_s43_im_1);
      s46_re <= (($signed(_zz_s46_re_1) == $signed(_zz_s46_re_2)) ? _zz_s46_re_3 : _zz_s46_re_1);
      s46_im <= (($signed(_zz_s46_im_1) == $signed(_zz_s46_im_2)) ? _zz_s46_im_3 : _zz_s46_im_1);
      s42_re <= (($signed(_zz_s42_re_1) == $signed(_zz_s42_re_2)) ? _zz_s42_re_3 : _zz_s42_re_1);
      s42_im <= (($signed(_zz_s42_im_1) == $signed(_zz_s42_im_2)) ? _zz_s42_im_3 : _zz_s42_im_1);
    end
  end

  always @(posedge clk) begin
    s11d_re <= s11_re;
    s11d_im <= s11_im;
    s12d_re <= s12_re;
    s12d_im <= s12_im;
    s11d_delay_1_re <= s11d_re;
    s11d_delay_1_im <= s11d_im;
    s11d_delay_2_re <= s11d_delay_1_re;
    s11d_delay_2_im <= s11d_delay_1_im;
    s11dd_re <= s11d_delay_2_re;
    s11dd_im <= s11d_delay_2_im;
    s12d_delay_1_re <= s12d_re;
    s12d_delay_1_im <= s12d_im;
    s12d_delay_2_re <= s12d_delay_1_re;
    s12d_delay_2_im <= s12d_delay_1_im;
    s12dd_re <= s12d_delay_2_re;
    s12dd_im <= s12d_delay_2_im;
    s21_delay_1_re <= s21_re;
    s21_delay_1_im <= s21_im;
    s21_delay_2_re <= s21_delay_1_re;
    s21_delay_2_im <= s21_delay_1_im;
    s21d_re <= s21_delay_2_re;
    s21d_im <= s21_delay_2_im;
    s24_delay_1_re <= s24_re;
    s24_delay_1_im <= s24_im;
    s24_delay_2_re <= s24_delay_1_re;
    s24_delay_2_im <= s24_delay_1_im;
    s24d_re <= s24_delay_2_re;
    s24d_im <= s24_delay_2_im;
  end


endmodule

//blkm replaced by blkm

module blkm (
  input      [19:0]   io_data_in_re,
  input      [19:0]   io_data_in_im,
  output     [20:0]   io_data_out_re,
  output     [20:0]   io_data_out_im,
  input               clk,
  input               reset
);

  wire       [19:0]   _zz_product_re;
  wire       [19:0]   _zz_product_re_1;
  wire       [19:0]   _zz_product_im;
  wire       [40:0]   _zz__zz_tmpRnd_re_4;
  wire       [40:0]   _zz__zz_tmpRnd_re_4_1;
  wire       [18:0]   _zz_when_SInt_l191;
  wire       [21:0]   _zz__zz_tmpRnd_re_6;
  wire       [21:0]   _zz__zz_tmpRnd_re_6_1;
  wire       [40:0]   _zz__zz_tmpRnd_re;
  wire       [40:0]   _zz__zz_tmpRnd_re_1;
  wire       [40:0]   _zz__zz_tmpRnd_re_2;
  wire       [40:0]   _zz__zz_tmpRnd_im_4;
  wire       [40:0]   _zz__zz_tmpRnd_im_4_1;
  wire       [18:0]   _zz_when_SInt_l191_1;
  wire       [21:0]   _zz__zz_tmpRnd_im_6;
  wire       [21:0]   _zz__zz_tmpRnd_im_6_1;
  wire       [40:0]   _zz__zz_tmpRnd_im;
  wire       [40:0]   _zz__zz_tmpRnd_im_1;
  wire       [40:0]   _zz__zz_tmpRnd_im_2;
  wire       [1:0]    _zz_when_SInt_l131;
  wire       [0:0]    _zz_when_SInt_l137;
  wire       [1:0]    _zz_when_SInt_l131_1;
  wire       [0:0]    _zz_when_SInt_l137_1;
  wire       [20:0]   _zz_tmpSat_re_1;
  wire       [20:0]   _zz_tmpSat_re_2;
  wire       [20:0]   _zz_tmpSat_im_1;
  wire       [20:0]   _zz_tmpSat_im_2;
  reg        [39:0]   product_re;
  reg        [39:0]   product_im;
  reg        [20:0]   tmpSat_re;
  reg        [20:0]   tmpSat_im;
  wire       [21:0]   tmpRnd_re;
  wire       [21:0]   tmpRnd_im;
  reg        [21:0]   _zz_tmpRnd_re;
  wire       [39:0]   _zz_tmpRnd_re_1;
  wire       [39:0]   _zz_tmpRnd_re_2;
  wire       [39:0]   _zz_tmpRnd_re_3;
  wire       [40:0]   _zz_tmpRnd_re_4;
  wire       [39:0]   _zz_tmpRnd_re_5;
  wire                when_SInt_l337;
  reg        [21:0]   _zz_tmpRnd_re_6;
  wire                when_SInt_l191;
  reg        [21:0]   _zz_tmpRnd_im;
  wire       [39:0]   _zz_tmpRnd_im_1;
  wire       [39:0]   _zz_tmpRnd_im_2;
  wire       [39:0]   _zz_tmpRnd_im_3;
  wire       [40:0]   _zz_tmpRnd_im_4;
  wire       [39:0]   _zz_tmpRnd_im_5;
  wire                when_SInt_l337_1;
  reg        [21:0]   _zz_tmpRnd_im_6;
  wire                when_SInt_l191_1;
  reg        [20:0]   _zz_tmpSat_re;
  wire                when_SInt_l130;
  wire                when_SInt_l131;
  wire                when_SInt_l137;
  reg        [20:0]   _zz_tmpSat_im;
  wire                when_SInt_l130_1;
  wire                when_SInt_l131_1;
  wire                when_SInt_l137_1;

  assign _zz_product_re = (- io_data_in_im);
  assign _zz_product_re_1 = 20'h6ed9e;
  assign _zz_product_im = 20'h6ed9e;
  assign _zz__zz_tmpRnd_re_4 = {_zz_tmpRnd_re_3[39],_zz_tmpRnd_re_3};
  assign _zz__zz_tmpRnd_re_4_1 = {_zz_tmpRnd_re_2[39],_zz_tmpRnd_re_2};
  assign _zz_when_SInt_l191 = _zz_tmpRnd_re_4[18 : 0];
  assign _zz__zz_tmpRnd_re_6 = _zz_tmpRnd_re_4[40 : 19];
  assign _zz__zz_tmpRnd_re_6_1 = 22'h000001;
  assign _zz__zz_tmpRnd_re = ($signed(_zz__zz_tmpRnd_re_1) + $signed(_zz__zz_tmpRnd_re_2));
  assign _zz__zz_tmpRnd_re_1 = {_zz_tmpRnd_re_5[39],_zz_tmpRnd_re_5};
  assign _zz__zz_tmpRnd_re_2 = {_zz_tmpRnd_re_1[39],_zz_tmpRnd_re_1};
  assign _zz__zz_tmpRnd_im_4 = {_zz_tmpRnd_im_3[39],_zz_tmpRnd_im_3};
  assign _zz__zz_tmpRnd_im_4_1 = {_zz_tmpRnd_im_2[39],_zz_tmpRnd_im_2};
  assign _zz_when_SInt_l191_1 = _zz_tmpRnd_im_4[18 : 0];
  assign _zz__zz_tmpRnd_im_6 = _zz_tmpRnd_im_4[40 : 19];
  assign _zz__zz_tmpRnd_im_6_1 = 22'h000001;
  assign _zz__zz_tmpRnd_im = ($signed(_zz__zz_tmpRnd_im_1) + $signed(_zz__zz_tmpRnd_im_2));
  assign _zz__zz_tmpRnd_im_1 = {_zz_tmpRnd_im_5[39],_zz_tmpRnd_im_5};
  assign _zz__zz_tmpRnd_im_2 = {_zz_tmpRnd_im_1[39],_zz_tmpRnd_im_1};
  assign _zz_when_SInt_l131 = tmpRnd_re[21 : 20];
  assign _zz_when_SInt_l137 = tmpRnd_re[20 : 20];
  assign _zz_when_SInt_l131_1 = tmpRnd_im[21 : 20];
  assign _zz_when_SInt_l137_1 = tmpRnd_im[20 : 20];
  assign _zz_tmpSat_re_1 = 21'h100000;
  assign _zz_tmpSat_re_2 = 21'h100001;
  assign _zz_tmpSat_im_1 = 21'h100000;
  assign _zz_tmpSat_im_2 = 21'h100001;
  assign _zz_tmpRnd_re_1 = {{21'h0,1'b1},18'h0};
  assign _zz_tmpRnd_re_2 = {22'h3fffff,18'h0};
  assign _zz_tmpRnd_re_3 = product_re[39 : 0];
  assign _zz_tmpRnd_re_4 = ($signed(_zz__zz_tmpRnd_re_4) + $signed(_zz__zz_tmpRnd_re_4_1));
  assign _zz_tmpRnd_re_5 = product_re[39 : 0];
  assign when_SInt_l337 = _zz_tmpRnd_re_4[40];
  assign when_SInt_l191 = (|_zz_when_SInt_l191);
  always @(*) begin
    if(when_SInt_l191) begin
      _zz_tmpRnd_re_6 = ($signed(_zz__zz_tmpRnd_re_6) + $signed(_zz__zz_tmpRnd_re_6_1));
    end else begin
      _zz_tmpRnd_re_6 = _zz_tmpRnd_re_4[40 : 19];
    end
  end

  always @(*) begin
    if(when_SInt_l337) begin
      _zz_tmpRnd_re = _zz_tmpRnd_re_6;
    end else begin
      _zz_tmpRnd_re = (_zz__zz_tmpRnd_re >>> 19);
    end
  end

  assign _zz_tmpRnd_im_1 = {{21'h0,1'b1},18'h0};
  assign _zz_tmpRnd_im_2 = {22'h3fffff,18'h0};
  assign _zz_tmpRnd_im_3 = product_im[39 : 0];
  assign _zz_tmpRnd_im_4 = ($signed(_zz__zz_tmpRnd_im_4) + $signed(_zz__zz_tmpRnd_im_4_1));
  assign _zz_tmpRnd_im_5 = product_im[39 : 0];
  assign when_SInt_l337_1 = _zz_tmpRnd_im_4[40];
  assign when_SInt_l191_1 = (|_zz_when_SInt_l191_1);
  always @(*) begin
    if(when_SInt_l191_1) begin
      _zz_tmpRnd_im_6 = ($signed(_zz__zz_tmpRnd_im_6) + $signed(_zz__zz_tmpRnd_im_6_1));
    end else begin
      _zz_tmpRnd_im_6 = _zz_tmpRnd_im_4[40 : 19];
    end
  end

  always @(*) begin
    if(when_SInt_l337_1) begin
      _zz_tmpRnd_im = _zz_tmpRnd_im_6;
    end else begin
      _zz_tmpRnd_im = (_zz__zz_tmpRnd_im >>> 19);
    end
  end

  assign tmpRnd_re = _zz_tmpRnd_re;
  assign tmpRnd_im = _zz_tmpRnd_im;
  assign when_SInt_l130 = tmpRnd_re[21];
  assign when_SInt_l131 = (! (&_zz_when_SInt_l131));
  always @(*) begin
    if(when_SInt_l130) begin
      if(when_SInt_l131) begin
        _zz_tmpSat_re = 21'h100000;
      end else begin
        _zz_tmpSat_re = tmpRnd_re[20 : 0];
      end
    end else begin
      if(when_SInt_l137) begin
        _zz_tmpSat_re = 21'h0fffff;
      end else begin
        _zz_tmpSat_re = tmpRnd_re[20 : 0];
      end
    end
  end

  assign when_SInt_l137 = (|_zz_when_SInt_l137);
  assign when_SInt_l130_1 = tmpRnd_im[21];
  assign when_SInt_l131_1 = (! (&_zz_when_SInt_l131_1));
  always @(*) begin
    if(when_SInt_l130_1) begin
      if(when_SInt_l131_1) begin
        _zz_tmpSat_im = 21'h100000;
      end else begin
        _zz_tmpSat_im = tmpRnd_im[20 : 0];
      end
    end else begin
      if(when_SInt_l137_1) begin
        _zz_tmpSat_im = 21'h0fffff;
      end else begin
        _zz_tmpSat_im = tmpRnd_im[20 : 0];
      end
    end
  end

  assign when_SInt_l137_1 = (|_zz_when_SInt_l137_1);
  assign io_data_out_re = tmpSat_re;
  assign io_data_out_im = tmpSat_im;
  always @(posedge clk) begin
    product_re <= ($signed(_zz_product_re) * $signed(_zz_product_re_1));
    product_im <= ($signed(io_data_in_re) * $signed(_zz_product_im));
    tmpSat_re <= (($signed(_zz_tmpSat_re) == $signed(_zz_tmpSat_re_1)) ? _zz_tmpSat_re_2 : _zz_tmpSat_re);
    tmpSat_im <= (($signed(_zz_tmpSat_im) == $signed(_zz_tmpSat_im_1)) ? _zz_tmpSat_im_2 : _zz_tmpSat_im);
  end


endmodule

module blks (
  input      [19:0]   io_data_in_0_re,
  input      [19:0]   io_data_in_0_im,
  input      [19:0]   io_data_in_1_re,
  input      [19:0]   io_data_in_1_im,
  output     [20:0]   io_data_out_re,
  output     [20:0]   io_data_out_im,
  input               clk,
  input               reset
);

  wire       [21:0]   _zz_m11_re;
  wire       [21:0]   _zz_m11_re_1;
  wire       [20:0]   _zz_m11_re_2;
  wire       [21:0]   _zz_m11_im;
  wire       [21:0]   _zz_m11_im_1;
  wire       [20:0]   _zz_m11_im_2;
  wire       [22:0]   _zz__zz_m21_re_5;
  wire       [22:0]   _zz__zz_m21_re_5_1;
  wire       [0:0]    _zz_when_SInt_l191;
  wire       [21:0]   _zz__zz_m21_re_7;
  wire       [21:0]   _zz__zz_m21_re_7_1;
  wire       [22:0]   _zz__zz_m21_re_1;
  wire       [22:0]   _zz__zz_m21_re_1_1;
  wire       [22:0]   _zz__zz_m21_re_1_2;
  wire       [22:0]   _zz__zz_m21_im_5;
  wire       [22:0]   _zz__zz_m21_im_5_1;
  wire       [0:0]    _zz_when_SInt_l191_1;
  wire       [21:0]   _zz__zz_m21_im_7;
  wire       [21:0]   _zz__zz_m21_im_7_1;
  wire       [22:0]   _zz__zz_m21_im_1;
  wire       [22:0]   _zz__zz_m21_im_1_1;
  wire       [22:0]   _zz__zz_m21_im_1_2;
  wire       [1:0]    _zz_when_SInt_l131;
  wire       [0:0]    _zz_when_SInt_l137;
  wire       [1:0]    _zz_when_SInt_l131_1;
  wire       [0:0]    _zz_when_SInt_l137_1;
  wire       [20:0]   _zz_m21_re_9;
  wire       [20:0]   _zz_m21_re_10;
  wire       [20:0]   _zz_m21_im_9;
  wire       [20:0]   _zz_m21_im_10;
  wire       [20:0]   tmp_re;
  wire       [20:0]   tmp_im;
  reg        [21:0]   m11_re;
  reg        [21:0]   m11_im;
  reg        [20:0]   m21_re;
  reg        [20:0]   m21_im;
  wire       [21:0]   _zz_m21_re;
  wire       [21:0]   _zz_m21_im;
  reg        [21:0]   _zz_m21_re_1;
  wire       [21:0]   _zz_m21_re_2;
  wire       [21:0]   _zz_m21_re_3;
  wire       [21:0]   _zz_m21_re_4;
  wire       [22:0]   _zz_m21_re_5;
  wire       [21:0]   _zz_m21_re_6;
  wire                when_SInt_l337;
  reg        [21:0]   _zz_m21_re_7;
  wire                when_SInt_l191;
  reg        [21:0]   _zz_m21_im_1;
  wire       [21:0]   _zz_m21_im_2;
  wire       [21:0]   _zz_m21_im_3;
  wire       [21:0]   _zz_m21_im_4;
  wire       [22:0]   _zz_m21_im_5;
  wire       [21:0]   _zz_m21_im_6;
  wire                when_SInt_l337_1;
  reg        [21:0]   _zz_m21_im_7;
  wire                when_SInt_l191_1;
  reg        [20:0]   _zz_m21_re_8;
  wire                when_SInt_l130;
  wire                when_SInt_l131;
  wire                when_SInt_l137;
  reg        [20:0]   _zz_m21_im_8;
  wire                when_SInt_l130_1;
  wire                when_SInt_l131_1;
  wire                when_SInt_l137_1;

  assign _zz_m11_re = {tmp_re[20],tmp_re};
  assign _zz_m11_re_2 = {io_data_in_1_re[19],io_data_in_1_re};
  assign _zz_m11_re_1 = {{1{_zz_m11_re_2[20]}}, _zz_m11_re_2};
  assign _zz_m11_im = {tmp_im[20],tmp_im};
  assign _zz_m11_im_2 = {io_data_in_1_im[19],io_data_in_1_im};
  assign _zz_m11_im_1 = {{1{_zz_m11_im_2[20]}}, _zz_m11_im_2};
  assign _zz__zz_m21_re_5 = {_zz_m21_re_4[21],_zz_m21_re_4};
  assign _zz__zz_m21_re_5_1 = {_zz_m21_re_3[21],_zz_m21_re_3};
  assign _zz_when_SInt_l191 = _zz_m21_re_5[0 : 0];
  assign _zz__zz_m21_re_7 = _zz_m21_re_5[22 : 1];
  assign _zz__zz_m21_re_7_1 = 22'h000001;
  assign _zz__zz_m21_re_1 = ($signed(_zz__zz_m21_re_1_1) + $signed(_zz__zz_m21_re_1_2));
  assign _zz__zz_m21_re_1_1 = {_zz_m21_re_6[21],_zz_m21_re_6};
  assign _zz__zz_m21_re_1_2 = {_zz_m21_re_2[21],_zz_m21_re_2};
  assign _zz__zz_m21_im_5 = {_zz_m21_im_4[21],_zz_m21_im_4};
  assign _zz__zz_m21_im_5_1 = {_zz_m21_im_3[21],_zz_m21_im_3};
  assign _zz_when_SInt_l191_1 = _zz_m21_im_5[0 : 0];
  assign _zz__zz_m21_im_7 = _zz_m21_im_5[22 : 1];
  assign _zz__zz_m21_im_7_1 = 22'h000001;
  assign _zz__zz_m21_im_1 = ($signed(_zz__zz_m21_im_1_1) + $signed(_zz__zz_m21_im_1_2));
  assign _zz__zz_m21_im_1_1 = {_zz_m21_im_6[21],_zz_m21_im_6};
  assign _zz__zz_m21_im_1_2 = {_zz_m21_im_2[21],_zz_m21_im_2};
  assign _zz_when_SInt_l131 = _zz_m21_re[21 : 20];
  assign _zz_when_SInt_l137 = _zz_m21_re[20 : 20];
  assign _zz_when_SInt_l131_1 = _zz_m21_im[21 : 20];
  assign _zz_when_SInt_l137_1 = _zz_m21_im[20 : 20];
  assign _zz_m21_re_9 = 21'h100000;
  assign _zz_m21_re_10 = 21'h100001;
  assign _zz_m21_im_9 = 21'h100000;
  assign _zz_m21_im_10 = 21'h100001;
  assign tmp_re = ({1'd0,io_data_in_0_re} <<< 1);
  assign tmp_im = ({1'd0,io_data_in_0_im} <<< 1);
  assign _zz_m21_re_2 = {21'h0,1'b1};
  assign _zz_m21_re_3 = 22'h3fffff;
  assign _zz_m21_re_4 = m11_re[21 : 0];
  assign _zz_m21_re_5 = ($signed(_zz__zz_m21_re_5) + $signed(_zz__zz_m21_re_5_1));
  assign _zz_m21_re_6 = m11_re[21 : 0];
  assign when_SInt_l337 = _zz_m21_re_5[22];
  assign when_SInt_l191 = (|_zz_when_SInt_l191);
  always @(*) begin
    if(when_SInt_l191) begin
      _zz_m21_re_7 = ($signed(_zz__zz_m21_re_7) + $signed(_zz__zz_m21_re_7_1));
    end else begin
      _zz_m21_re_7 = _zz_m21_re_5[22 : 1];
    end
  end

  always @(*) begin
    if(when_SInt_l337) begin
      _zz_m21_re_1 = _zz_m21_re_7;
    end else begin
      _zz_m21_re_1 = (_zz__zz_m21_re_1 >>> 1);
    end
  end

  assign _zz_m21_re = _zz_m21_re_1;
  assign _zz_m21_im_2 = {21'h0,1'b1};
  assign _zz_m21_im_3 = 22'h3fffff;
  assign _zz_m21_im_4 = m11_im[21 : 0];
  assign _zz_m21_im_5 = ($signed(_zz__zz_m21_im_5) + $signed(_zz__zz_m21_im_5_1));
  assign _zz_m21_im_6 = m11_im[21 : 0];
  assign when_SInt_l337_1 = _zz_m21_im_5[22];
  assign when_SInt_l191_1 = (|_zz_when_SInt_l191_1);
  always @(*) begin
    if(when_SInt_l191_1) begin
      _zz_m21_im_7 = ($signed(_zz__zz_m21_im_7) + $signed(_zz__zz_m21_im_7_1));
    end else begin
      _zz_m21_im_7 = _zz_m21_im_5[22 : 1];
    end
  end

  always @(*) begin
    if(when_SInt_l337_1) begin
      _zz_m21_im_1 = _zz_m21_im_7;
    end else begin
      _zz_m21_im_1 = (_zz__zz_m21_im_1 >>> 1);
    end
  end

  assign _zz_m21_im = _zz_m21_im_1;
  assign when_SInt_l130 = _zz_m21_re[21];
  assign when_SInt_l131 = (! (&_zz_when_SInt_l131));
  always @(*) begin
    if(when_SInt_l130) begin
      if(when_SInt_l131) begin
        _zz_m21_re_8 = 21'h100000;
      end else begin
        _zz_m21_re_8 = _zz_m21_re[20 : 0];
      end
    end else begin
      if(when_SInt_l137) begin
        _zz_m21_re_8 = 21'h0fffff;
      end else begin
        _zz_m21_re_8 = _zz_m21_re[20 : 0];
      end
    end
  end

  assign when_SInt_l137 = (|_zz_when_SInt_l137);
  assign when_SInt_l130_1 = _zz_m21_im[21];
  assign when_SInt_l131_1 = (! (&_zz_when_SInt_l131_1));
  always @(*) begin
    if(when_SInt_l130_1) begin
      if(when_SInt_l131_1) begin
        _zz_m21_im_8 = 21'h100000;
      end else begin
        _zz_m21_im_8 = _zz_m21_im[20 : 0];
      end
    end else begin
      if(when_SInt_l137_1) begin
        _zz_m21_im_8 = 21'h0fffff;
      end else begin
        _zz_m21_im_8 = _zz_m21_im[20 : 0];
      end
    end
  end

  assign when_SInt_l137_1 = (|_zz_when_SInt_l137_1);
  assign io_data_out_re = m21_re;
  assign io_data_out_im = m21_im;
  always @(posedge clk) begin
    m11_re <= ($signed(_zz_m11_re) - $signed(_zz_m11_re_1));
    m11_im <= ($signed(_zz_m11_im) - $signed(_zz_m11_im_1));
    m21_re <= (($signed(_zz_m21_re_8) == $signed(_zz_m21_re_9)) ? _zz_m21_re_10 : _zz_m21_re_8);
    m21_im <= (($signed(_zz_m21_im_8) == $signed(_zz_m21_im_9)) ? _zz_m21_im_10 : _zz_m21_im_8);
  end


endmodule

module blka (
  input      [19:0]   io_data_in_0_re,
  input      [19:0]   io_data_in_0_im,
  input      [19:0]   io_data_in_1_re,
  input      [19:0]   io_data_in_1_im,
  output     [20:0]   io_data_out_re,
  output     [20:0]   io_data_out_im,
  input               clk,
  input               reset
);

  wire       [21:0]   _zz_m11_re;
  wire       [21:0]   _zz_m11_re_1;
  wire       [20:0]   _zz_m11_re_2;
  wire       [21:0]   _zz_m11_im;
  wire       [21:0]   _zz_m11_im_1;
  wire       [20:0]   _zz_m11_im_2;
  wire       [22:0]   _zz__zz_m21_re_5;
  wire       [22:0]   _zz__zz_m21_re_5_1;
  wire       [0:0]    _zz_when_SInt_l191;
  wire       [21:0]   _zz__zz_m21_re_7;
  wire       [21:0]   _zz__zz_m21_re_7_1;
  wire       [22:0]   _zz__zz_m21_re_1;
  wire       [22:0]   _zz__zz_m21_re_1_1;
  wire       [22:0]   _zz__zz_m21_re_1_2;
  wire       [22:0]   _zz__zz_m21_im_5;
  wire       [22:0]   _zz__zz_m21_im_5_1;
  wire       [0:0]    _zz_when_SInt_l191_1;
  wire       [21:0]   _zz__zz_m21_im_7;
  wire       [21:0]   _zz__zz_m21_im_7_1;
  wire       [22:0]   _zz__zz_m21_im_1;
  wire       [22:0]   _zz__zz_m21_im_1_1;
  wire       [22:0]   _zz__zz_m21_im_1_2;
  wire       [1:0]    _zz_when_SInt_l131;
  wire       [0:0]    _zz_when_SInt_l137;
  wire       [1:0]    _zz_when_SInt_l131_1;
  wire       [0:0]    _zz_when_SInt_l137_1;
  wire       [20:0]   _zz_m21_re_9;
  wire       [20:0]   _zz_m21_re_10;
  wire       [20:0]   _zz_m21_im_9;
  wire       [20:0]   _zz_m21_im_10;
  wire       [20:0]   tmp_re;
  wire       [20:0]   tmp_im;
  reg        [21:0]   m11_re;
  reg        [21:0]   m11_im;
  reg        [20:0]   m21_re;
  reg        [20:0]   m21_im;
  wire       [21:0]   _zz_m21_re;
  wire       [21:0]   _zz_m21_im;
  reg        [21:0]   _zz_m21_re_1;
  wire       [21:0]   _zz_m21_re_2;
  wire       [21:0]   _zz_m21_re_3;
  wire       [21:0]   _zz_m21_re_4;
  wire       [22:0]   _zz_m21_re_5;
  wire       [21:0]   _zz_m21_re_6;
  wire                when_SInt_l337;
  reg        [21:0]   _zz_m21_re_7;
  wire                when_SInt_l191;
  reg        [21:0]   _zz_m21_im_1;
  wire       [21:0]   _zz_m21_im_2;
  wire       [21:0]   _zz_m21_im_3;
  wire       [21:0]   _zz_m21_im_4;
  wire       [22:0]   _zz_m21_im_5;
  wire       [21:0]   _zz_m21_im_6;
  wire                when_SInt_l337_1;
  reg        [21:0]   _zz_m21_im_7;
  wire                when_SInt_l191_1;
  reg        [20:0]   _zz_m21_re_8;
  wire                when_SInt_l130;
  wire                when_SInt_l131;
  wire                when_SInt_l137;
  reg        [20:0]   _zz_m21_im_8;
  wire                when_SInt_l130_1;
  wire                when_SInt_l131_1;
  wire                when_SInt_l137_1;

  assign _zz_m11_re = {tmp_re[20],tmp_re};
  assign _zz_m11_re_2 = {io_data_in_1_re[19],io_data_in_1_re};
  assign _zz_m11_re_1 = {{1{_zz_m11_re_2[20]}}, _zz_m11_re_2};
  assign _zz_m11_im = {tmp_im[20],tmp_im};
  assign _zz_m11_im_2 = {io_data_in_1_im[19],io_data_in_1_im};
  assign _zz_m11_im_1 = {{1{_zz_m11_im_2[20]}}, _zz_m11_im_2};
  assign _zz__zz_m21_re_5 = {_zz_m21_re_4[21],_zz_m21_re_4};
  assign _zz__zz_m21_re_5_1 = {_zz_m21_re_3[21],_zz_m21_re_3};
  assign _zz_when_SInt_l191 = _zz_m21_re_5[0 : 0];
  assign _zz__zz_m21_re_7 = _zz_m21_re_5[22 : 1];
  assign _zz__zz_m21_re_7_1 = 22'h000001;
  assign _zz__zz_m21_re_1 = ($signed(_zz__zz_m21_re_1_1) + $signed(_zz__zz_m21_re_1_2));
  assign _zz__zz_m21_re_1_1 = {_zz_m21_re_6[21],_zz_m21_re_6};
  assign _zz__zz_m21_re_1_2 = {_zz_m21_re_2[21],_zz_m21_re_2};
  assign _zz__zz_m21_im_5 = {_zz_m21_im_4[21],_zz_m21_im_4};
  assign _zz__zz_m21_im_5_1 = {_zz_m21_im_3[21],_zz_m21_im_3};
  assign _zz_when_SInt_l191_1 = _zz_m21_im_5[0 : 0];
  assign _zz__zz_m21_im_7 = _zz_m21_im_5[22 : 1];
  assign _zz__zz_m21_im_7_1 = 22'h000001;
  assign _zz__zz_m21_im_1 = ($signed(_zz__zz_m21_im_1_1) + $signed(_zz__zz_m21_im_1_2));
  assign _zz__zz_m21_im_1_1 = {_zz_m21_im_6[21],_zz_m21_im_6};
  assign _zz__zz_m21_im_1_2 = {_zz_m21_im_2[21],_zz_m21_im_2};
  assign _zz_when_SInt_l131 = _zz_m21_re[21 : 20];
  assign _zz_when_SInt_l137 = _zz_m21_re[20 : 20];
  assign _zz_when_SInt_l131_1 = _zz_m21_im[21 : 20];
  assign _zz_when_SInt_l137_1 = _zz_m21_im[20 : 20];
  assign _zz_m21_re_9 = 21'h100000;
  assign _zz_m21_re_10 = 21'h100001;
  assign _zz_m21_im_9 = 21'h100000;
  assign _zz_m21_im_10 = 21'h100001;
  assign tmp_re = ({1'd0,io_data_in_0_re} <<< 1);
  assign tmp_im = ({1'd0,io_data_in_0_im} <<< 1);
  assign _zz_m21_re_2 = {21'h0,1'b1};
  assign _zz_m21_re_3 = 22'h3fffff;
  assign _zz_m21_re_4 = m11_re[21 : 0];
  assign _zz_m21_re_5 = ($signed(_zz__zz_m21_re_5) + $signed(_zz__zz_m21_re_5_1));
  assign _zz_m21_re_6 = m11_re[21 : 0];
  assign when_SInt_l337 = _zz_m21_re_5[22];
  assign when_SInt_l191 = (|_zz_when_SInt_l191);
  always @(*) begin
    if(when_SInt_l191) begin
      _zz_m21_re_7 = ($signed(_zz__zz_m21_re_7) + $signed(_zz__zz_m21_re_7_1));
    end else begin
      _zz_m21_re_7 = _zz_m21_re_5[22 : 1];
    end
  end

  always @(*) begin
    if(when_SInt_l337) begin
      _zz_m21_re_1 = _zz_m21_re_7;
    end else begin
      _zz_m21_re_1 = (_zz__zz_m21_re_1 >>> 1);
    end
  end

  assign _zz_m21_re = _zz_m21_re_1;
  assign _zz_m21_im_2 = {21'h0,1'b1};
  assign _zz_m21_im_3 = 22'h3fffff;
  assign _zz_m21_im_4 = m11_im[21 : 0];
  assign _zz_m21_im_5 = ($signed(_zz__zz_m21_im_5) + $signed(_zz__zz_m21_im_5_1));
  assign _zz_m21_im_6 = m11_im[21 : 0];
  assign when_SInt_l337_1 = _zz_m21_im_5[22];
  assign when_SInt_l191_1 = (|_zz_when_SInt_l191_1);
  always @(*) begin
    if(when_SInt_l191_1) begin
      _zz_m21_im_7 = ($signed(_zz__zz_m21_im_7) + $signed(_zz__zz_m21_im_7_1));
    end else begin
      _zz_m21_im_7 = _zz_m21_im_5[22 : 1];
    end
  end

  always @(*) begin
    if(when_SInt_l337_1) begin
      _zz_m21_im_1 = _zz_m21_im_7;
    end else begin
      _zz_m21_im_1 = (_zz__zz_m21_im_1 >>> 1);
    end
  end

  assign _zz_m21_im = _zz_m21_im_1;
  assign when_SInt_l130 = _zz_m21_re[21];
  assign when_SInt_l131 = (! (&_zz_when_SInt_l131));
  always @(*) begin
    if(when_SInt_l130) begin
      if(when_SInt_l131) begin
        _zz_m21_re_8 = 21'h100000;
      end else begin
        _zz_m21_re_8 = _zz_m21_re[20 : 0];
      end
    end else begin
      if(when_SInt_l137) begin
        _zz_m21_re_8 = 21'h0fffff;
      end else begin
        _zz_m21_re_8 = _zz_m21_re[20 : 0];
      end
    end
  end

  assign when_SInt_l137 = (|_zz_when_SInt_l137);
  assign when_SInt_l130_1 = _zz_m21_im[21];
  assign when_SInt_l131_1 = (! (&_zz_when_SInt_l131_1));
  always @(*) begin
    if(when_SInt_l130_1) begin
      if(when_SInt_l131_1) begin
        _zz_m21_im_8 = 21'h100000;
      end else begin
        _zz_m21_im_8 = _zz_m21_im[20 : 0];
      end
    end else begin
      if(when_SInt_l137_1) begin
        _zz_m21_im_8 = 21'h0fffff;
      end else begin
        _zz_m21_im_8 = _zz_m21_im[20 : 0];
      end
    end
  end

  assign when_SInt_l137_1 = (|_zz_when_SInt_l137_1);
  assign io_data_out_re = m21_re;
  assign io_data_out_im = m21_im;
  always @(posedge clk) begin
    m11_re <= ($signed(_zz_m11_re) + $signed(_zz_m11_re_1));
    m11_im <= ($signed(_zz_m11_im) + $signed(_zz_m11_im_1));
    m21_re <= (($signed(_zz_m21_re_8) == $signed(_zz_m21_re_9)) ? _zz_m21_re_10 : _zz_m21_re_8);
    m21_im <= (($signed(_zz_m21_im_8) == $signed(_zz_m21_im_9)) ? _zz_m21_im_10 : _zz_m21_im_8);
  end


endmodule
