// A dual-port RAM with synchronous write and synchronous read operations.
// The RAM has a 64x8 configuration (64 locations, 8-bit data width) and uses separate clocks for read and write operations, enabling simultaneous access.
module ram_dual_port (
    output reg [7:0] q,           // 8-bit output data (read data)
    input [7:0] data,             // 8-bit input data (write data)
    input [5:0] read_addr,        // 6-bit read address (0 to 63)
    input [5:0] write_addr,       // 6-bit write address (0 to 63)
    input we,                     // Write enable (active high)
    input read_clk,               // Clock for read operations
    input write_clk               // Clock for write operations
);
    // Internal RAM storage: 64 locations, each 8 bits wide
    reg [7:0] ram [0:63];
    // Synchronous write process: write data to RAM on rising edge of write_clk
    always @(posedge write_clk) begin
        if (we)
            ram[write_addr] <= data;
    end
    // Synchronous read process: read data from RAM on rising edge of read_clk
    always @(posedge read_clk) begin
        q <= ram[read_addr];
    end
endmodule
