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
	input[7:0] 				REQ,
	output reg [7:0]		GNT
	 );
	 
	 //for handling the value of REQ wires
	 reg[7:0] 				req;
	 initial
		req=REQ;
	 
	 always @(negedge rst) 
	 begin
		//Reset All output
		GNT   <= 	8'b1111_1111;
	 end
	 
	 always @(posedge clk) 
	 begin
		//check if there's granted device or not
		if(GNT == 8'd255) 
		begin :IF
			//Read All devices' requests
			integer i ;
			i=32'd0;
			while(req[0]==1) 
			begin
				req = req>>1;
				i = i+1;
			end
			GNT[i] <= 0;
		end:IF
		//Set Corresponding GNT
		
	 end
	 

endmodule
