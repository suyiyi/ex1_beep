`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/04/22 16:53:23
// Design Name: 
// Module Name: beep
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


module beep_test(
			input clk,
			input rst_n,
			output reg beep
    );
reg [27:0] cnt;
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) 
		cnt<=28'd0;
	else if(cnt==28'd149_999_999)
		cnt<=28'd0;
	else
		cnt<=cnt+28'd1;
end
always @(posedge clk or negedge rst_n) begin
	if(!rst_n)
		beep<=0;
	else if(cnt<28'd24_999_999)
		beep<=1'b1;
	else
		beep<=1'b0;
endmodule
