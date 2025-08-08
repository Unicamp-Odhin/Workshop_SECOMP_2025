module pixel_gen #(
    parameter VGA_WIDTH       = 640,
    parameter VGA_HEIGHT      = 480,
    parameter VGA_COLOR_DEPTH = 4,
    parameter BUFFER_WIDTH    = VGA_COLOR_DEPTH * 3 // RGB888
) (
    input  logic visible_area,
    input  logic [9:0] pixel_x,
    input  logic [8:0] pixel_y,
    input  logic [18:0] id,
    output logic [VGA_COLOR_DEPTH - 1:0] r,
    output logic [VGA_COLOR_DEPTH - 1:0] g,
    output logic [VGA_COLOR_DEPTH - 1:0] b
);

    localparam BUFFER_SIZE = VGA_WIDTH * VGA_HEIGHT;

    //logic [VGA_COLOR_DEPTH - 1: 0] video_buffer [0: BUFFER_SIZE - 1];

    initial begin
        $readmemh("initial_video.hex", video_buffer);
    end

endmodule
