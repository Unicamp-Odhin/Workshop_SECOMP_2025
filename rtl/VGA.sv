module VGA #(
    parameter VGA_WIDTH       = 640,
    parameter VGA_HEIGHT      = 480,
    parameter VGA_COLOR_DEPTH = 4
) (
    input  logic clk,
    input  logic rst_n,

    output logic [VGA_COLOR_DEPTH - 1:0] vga_r,
    output logic [VGA_COLOR_DEPTH - 1:0] vga_g,
    output logic [VGA_COLOR_DEPTH - 1:0] vga_b,
    output logic hsync,
    output logic vsync,
    output logic vga_visible
);
    // VGA Timing Parameters for 640x480 @ 60Hz
    localparam H_VISIBLE     = 640;
    localparam H_FRONT_PORCH = 16;
    localparam H_SYNC_PULSE  = 96;
    localparam H_BACK_PORCH  = 48;
    localparam H_TOTAL       = H_VISIBLE + H_FRONT_PORCH + H_SYNC_PULSE + H_BACK_PORCH;

    localparam V_VISIBLE     = 480;
    localparam V_FRONT_PORCH = 10;
    localparam V_SYNC_PULSE  = 2;
    localparam V_BACK_PORCH  = 33;
    localparam V_TOTAL       = V_VISIBLE + V_FRONT_PORCH + V_SYNC_PULSE + V_BACK_PORCH;


endmodule
