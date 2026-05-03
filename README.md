# 2x2 Systolic Array in Verilog

A complete RTL implementation of a **2x2 systolic array accelerator**
for matrix multiplication using Verilog.

This project demonstrates core AI accelerator concepts such as:

- Processing Elements (PE)
- Multiply-Accumulate (MAC)
- Dataflow architecture
- Parallel matrix computation
- Modular RTL hierarchy

---

## Architecture

Each Processing Element performs:

C = C + (A × B)

Data movement:

- Matrix A flows horizontally
- Matrix B flows vertically

---

## Matrix Multiplication

Input:

A =
|1 2|
|3 4|

B =
|5 6|
|7 8|

Expected Output:

C =
|19 22|
|43 50|

---

## Project Files

### RTL

- `pe.v`
- `systolic_array_2x2.v`

### Testbench

- `tb_systolic.v`

---

## Simulation

Run on:

- EDA Playground
- ModelSim
- Icarus Verilog
- Vivado Simulator

---

## Expected Output

C00 = 19
C01 = 22
C10 = 43
C11 = 50

---

## Learning Outcomes

This project covers:

- RTL Design
- AI Accelerator Basics
- Hierarchical Verilog Design
- Testbench Development
- Matrix Compute Hardware

---

## Future Improvements

- Parameterized NxN array
- SRAM buffering
- AXI interface
- Weight stationary dataflow
- Pipelined control logic

---

## Author

Your Name
