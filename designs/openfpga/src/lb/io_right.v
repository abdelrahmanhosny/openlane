//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for physical block: io]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Feb 25 16:43:51 2020
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

`include "../fpga_defines.v"
// ---- BEGIN Sub-module of physical block:io ----
// ----- Verilog module for grid_right_io_mode_io_phy__iopad -----
module grid_right_io_mode_io_phy__iopad(pReset,
                                        prog_clk,
                                        gfpga_pad_iopad,
                                        iopad_outpad,
                                        ccff_head,
                                        iopad_inpad,
                                        ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- GPIO PORTS -----
inout [0:0] gfpga_pad_iopad;
//----- INPUT PORTS -----
input [0:0] iopad_outpad;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] iopad_inpad;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:0] iopad_outpad;
wire [0:0] iopad_inpad;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] ccff_head;
wire [0:0] ccff_tail;
wire [0:0] iopad_0_en;
wire [0:0] mem_outb;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	iopad iopad_0_ (
		.pad(gfpga_pad_iopad[0]),
		.outpad(iopad_outpad[0]),
		.en(iopad_0_en[0]),
		.inpad(iopad_inpad[0]));

	iopad_scs8hd_dfrbp_1_mem iopad_scs8hd_dfrbp_1_mem (
		.pReset(pReset[0]),
		.prog_clk(prog_clk[0]),
		.ccff_head(ccff_head[0]),
		.ccff_tail(ccff_tail[0]),
		.mem_out(iopad_0_en[0]),
		.mem_outb(mem_outb[0]));

endmodule
// ----- END Verilog module for grid_right_io_mode_io_phy__iopad -----



// ----- BEGIN Physical programmable logic block Verilog module: io -----
// ----- Verilog module for grid_right_io_mode_io_ -----
module grid_right_io_mode_io_(pReset,
                              prog_clk,
                              gfpga_pad_iopad,
                              io_outpad,
                              ccff_head,
                              io_inpad,
                              ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- GPIO PORTS -----
inout [0:0] gfpga_pad_iopad;
//----- INPUT PORTS -----
input [0:0] io_outpad;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] io_inpad;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
wire [0:0] io_outpad;
wire [0:0] io_inpad;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:0] ccff_head;
wire [0:0] ccff_tail;
wire [0:0] direct_interc_1_out;
wire [0:0] grid_right_io_mode_io_phy__iopad_0_iopad_inpad;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	grid_right_io_mode_io_phy__iopad grid_right_io_mode_io_phy__iopad_0 (
		.pReset(pReset[0]),
		.prog_clk(prog_clk[0]),
		.gfpga_pad_iopad(gfpga_pad_iopad[0]),
		.iopad_outpad(direct_interc_1_out[0]),
		.ccff_head(ccff_head[0]),
		.iopad_inpad(grid_right_io_mode_io_phy__iopad_0_iopad_inpad[0]),
		.ccff_tail(ccff_tail[0]));

	direct_interc direct_interc_0_ (
		.in(grid_right_io_mode_io_phy__iopad_0_iopad_inpad[0]),
		.out(io_inpad[0]));

	direct_interc direct_interc_1_ (
		.in(io_outpad[0]),
		.out(direct_interc_1_out[0]));

endmodule
// ----- END Verilog module for grid_right_io_mode_io_ -----


// ----- END Physical programmable logic block Verilog module: io -----

// ---- END Sub-module of physical block:io ----
// ----- BEGIN Grid Verilog module: grid_io_right -----
// ----- Verilog module for grid_io_right -----
module grid_io_right(pReset,
                     prog_clk,
                     gfpga_pad_iopad,
                     left_height_0__pin_0_,
                     ccff_head,
                     left_height_0_pin_1_upper,
                     left_height_0_pin_1_lower,
                     ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- GPIO PORTS -----
inout [0:0] gfpga_pad_iopad;
//----- INPUT PORTS -----
input [0:0] left_height_0__pin_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:0] left_height_0_pin_1_upper;
//----- OUTPUT PORTS -----
output [0:0] left_height_0_pin_1_lower;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
	assign left_height_0_pin_1_lower[0] = left_height_0_pin_1_upper[0];
// ----- END Local output short connections -----

	grid_right_io_mode_io_ grid_right_io_mode_io__0 (
		.pReset(pReset[0]),
		.prog_clk(prog_clk[0]),
		.gfpga_pad_iopad(gfpga_pad_iopad[0]),
		.io_outpad(left_height_0__pin_0_[0]),
		.ccff_head(ccff_head[0]),
		.io_inpad(left_height_0_pin_1_upper[0]),
		.ccff_tail(ccff_tail[0]));

endmodule
// ----- END Verilog module for grid_io_right -----


// ----- END Grid Verilog module: grid_io_right -----

