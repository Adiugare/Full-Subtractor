# Full-Subtractor

# 1-Bit Full Subtractor in Verilog

This project implements a 1-bit Full Subtractor using Verilog HDL. 
A full subtractor performs binary subtraction on three input bits: the minuend `A`, subtrahend `B`, and borrow-in `Bin`. 
It produces two outputs: the difference (`D`) and the borrow-out (`Bout`).

Module Description

Inputs:
- `A` – Minuend bit  
- `B` – Subtrahend bit  
- `Bin` – Borrow from previous bit

Outputs:
- `D` – Difference bit  
- `Bout` – Borrow out to the next stage

Logic Expressions
- Difference (`D`) = A ⊕ B ⊕ Bin  
- Borrow-out (`Bout`) = (~A & B) | (B & Bin) | (~A & Bin)
