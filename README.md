# FSM Pattern Detector 11011 - Verilog

A Mealy Finite State Machine implemented in Verilog HDL that detects the binary sequence 11011 in a continuous serial input stream. Designed and simulated using Xilinx Vivado.

---

## Overview

This project reads a serial binary input bit by bit and detects whenever the pattern 11011 appears. The output Z goes high for one clock cycle as soon as the pattern is detected. The FSM also handles overlapping sequences correctly.

---

## Features

- 6-state Mealy FSM for sequence detection
- Detects the pattern 11011 in a continuous serial bit stream
- Output Z goes high immediately when pattern is detected
- Handles overlapping sequences correctly
- Synchronous reset that brings the machine back to the initial idle state
- Clean separation of sequential and combinational logic blocks

---

## State Details

- Sin is the initial idle state
- S1 means the input so far matched 1
- S11 means the input so far matched 11
- S110 means the input so far matched 110
- S1101 means the input so far matched 1101
- S11011 is the final detect state where pattern 11011 is complete and Z goes high

---

## Module Ports

- din (input, 1-bit) — serial binary input stream
- clk (input, 1-bit) — clock signal
- reset (input, 1-bit) — active-high synchronous reset
- Z (output, 1-bit) — goes high when the pattern 11011 is detected

---

## File Structure

The src folder contains FSM_pattern_11011.v which is the main FSM module.

---

## How to Simulate

Clone the repository and open Xilinx Vivado. Create a new project and add the file inside the src folder as a design source. Run Behavioral Simulation, apply a clock signal, toggle reset, and provide a serial bit stream as din to observe the output Z going high when 11011 is detected.

You can also simulate online by pasting the source code into EDA Playground at edaplayground.com.

---

## Tools Used

- Xilinx Vivado for RTL design and simulation
- Verilog HDL for hardware description

---

## Author

Aakankshith Sangarsu
Electronics and Communication Engineering
GITAM School of Technology, Hyderabad

---

## License

This project is open-source under the MIT License.
