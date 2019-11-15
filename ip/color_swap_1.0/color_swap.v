`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: xilinx
// Engineer: Yun Rock Qu
// 
// Create Date: 12/19/2017 10:33:58 AM
// Design Name: color_swap
// Module Name: color_swap
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module color_swap(
    pixel_clk,
    hsync_in,
    hsync_out,
    pixel_in,
    pixel_out,
    vde_in,
    vde_out,
    vsync_in,
    vsync_out
    );
    parameter input_format = "rgb";
    parameter output_format = "rbg";
    input pixel_clk;
    input hsync_in;
    output hsync_out;
    input vsync_in;
    output vsync_out;
    input [23:0]pixel_in;
    output [23:0]pixel_out;
    input vde_in;
    output vde_out;
    

reg [23:0]pixel_rgb_0;
reg [23:0]pixel_rgb_1;
reg [23:0]pixel_rgb_2;
reg [23:0]pixel_rgb_3;
reg  hsync_0,hsync_1,hsync_2,hsync_3;
reg  vsync_0,vsync_1,vsync_2,vsync_3;
reg  vde_0,vde_1,vde_2,vde_3;

assign hsync_out = hsync_3;
assign vsync_out = vsync_3;
assign vde_out = vde_3;
assign pixel_out = pixel_rgb_3;
always @(posedge pixel_clk)
begin
    pixel_rgb_0 = pixel_in;
    if (input_format == "rgb")
        pixel_rgb_1[23:0] = {pixel_rgb_0[23:16],pixel_rgb_0[15:8],pixel_rgb_0[7:0]};
    else if (input_format == "rbg")
        pixel_rgb_1[23:0] = {pixel_rgb_0[23:16],pixel_rgb_0[7:0],pixel_rgb_0[15:8]};
    if (output_format == "rgb")
        pixel_rgb_2[23:0] = {pixel_rgb_1[23:16],pixel_rgb_1[15:8],pixel_rgb_1[7:0]};
    else if (output_format == "rbg")
        pixel_rgb_2[23:0] = {pixel_rgb_1[23:16],pixel_rgb_1[7:0],pixel_rgb_1[15:8]};
  pixel_rgb_3 = pixel_rgb_2;
  
  hsync_0 = hsync_in;
  hsync_1 = hsync_0;
  hsync_2 = hsync_1;
  hsync_3 = hsync_2;
  
  vsync_0 = vsync_in;
  vsync_1 = vsync_0;
  vsync_2 = vsync_1;
  vsync_3 = vsync_2;
  
  vde_0 = vde_in;
  vde_1 = vde_0;
  vde_2 = vde_1;
  vde_3 = vde_2;
end





endmodule
