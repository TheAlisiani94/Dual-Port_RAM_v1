# Dual-Port RAM in Verilog

This project implements a dual-port RAM in Verilog with a 64x8 configuration (64 locations, 8-bit data width). The RAM supports synchronous write and read operations using separate clocks for each port, allowing simultaneous read and write access. A testbench is included to verify the RAM’s functionality across various scenarios, including different clock frequencies.

## Project Overview

The dual-port RAM enables writing an 8-bit data value to a 6-bit address when the write enable (`we`) signal is high, synchronized to the `write_clk`. Simultaneously, it allows reading an 8-bit data value from a different 6-bit address, synchronized to the `read_clk`. The use of separate clocks makes this design suitable for applications requiring independent read and write operations, such as data buffers or multi-core systems. The design is compatible with FPGA or ASIC block RAMs.

### Files in the Project

- **`ram_dual_port.sv`**: The main Verilog module implementing the dual-port RAM. It defines a 64x8 memory array and uses separate clocked processes for synchronous write and read operations.

- **`ram_dual_port_tb.sv`**: The testbench for the RAM module. It tests write and read operations across multiple addresses, simultaneous read/write scenarios, and edge cases, using different clock periods for read and write clocks.

- **`README.md`**: This file, providing documentation and instructions for the project.
