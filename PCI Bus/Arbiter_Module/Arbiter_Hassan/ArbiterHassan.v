`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: MH
// 
// Create Date:    22:47:20 12/16/2018 
// Design Name: 
// Module Name:    ArbiterHassan 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ArbiterHassan(
	input 		 			clk,
	input 					rst,
	input 					FRAME,
	input						IRDY,
	input						TRDY,
	input						STOP,
	input 					DEVSEL,
	input[7:0] 				REQ,
	output reg [7:0]		GNT
	 );
	 always @(negedge rst) begin
		//Reset All portlist
	 end
	 always @(posedge clk) begin
		//Read All devices' requests
		
		//Handle these requests by priority algorithm
		
		//Set Corresponding GNT
		
	 end
	 

endmodule
