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
	input[3:0]				CMD_BE,
	inout[31:0]				AD
    );
	 reg[31:0]				AD_reg;
	 
	 //Continous Assignment of AD in case IRDY is asserted
	 assign AD = AD_reg;
	 initial begin
		//declare Arbiter module portlist
		
		//Instanciate Arbiter object
		//ArbiterHassan arbt();
	 end
	 //Check which device has GNT w.r.t priority
	 always @ (posedge clk) begin
		//check assertion of GNT
			//Assert the FRAME signal
			//Set device's Address
	 end
	 always @ (posedge clk) begin
		//check FRAME Signal
			//Deassert FRAME and GNT
			//Assert IRDY and TRDY,DEVSEL
			//Set Data Frame
	 end


endmodule
