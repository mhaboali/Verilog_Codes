`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:02:34 12/17/2018 
// Design Name: 
// Module Name:    PciHassan 
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
`include "..\..\Arbiter_Module\Arbiter_Hassan\ArbiterHassan.v"

module PciHassan(
	input						Vcc,
	input						Gnd,
	input						clk,
	input						rst,
	input						FRAME,
	input						TRDY,
	input 					IRDY,
	input						DEVSEL,
	input[1:0]				CMD_BE,
	inout[31:0]				AD
    );
	 reg[31:0]				AD_reg;
	 //inputs to arbiter module
	 reg [7:0] 				REQ,GNT;
	 reg 						RST;
	 //Continous Assignment of AD in case IRDY is asserted
	 //command bus = 0 for master read and 1 for master write
	 assign AD =(CMD_BE == 0)? AD_reg:8'bzzzz_zzzz;
	 assign rst = (RST==0)? 0:1;
	 //Instanciate Arbiter object
	 ArbiterHassan(clk,rst,REQ,GNT);
	 always @(Vcc || Gnd )
		RST = 0;
		

	//Check which device has GNT w.r.t priority
	 //always @ (posedge clk) begin
		//check assertion of GNT
	 //end
	 //always @ (posedge clk) begin
		//check FRAME Signal
			//Deassert FRAME and GNT
			//Assert IRDY and TRDY,DEVSEL
			//Set Data Frame
	 //end


endmodule
