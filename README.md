# 32-bit IEEE-754 Floating-Point Multiplier

A high-performance 32-bit Floating-Point Multiplier implemented in Verilog HDL. This design leverages optimized arithmetic architectures to achieve high-speed computation, making it ideal for DSP and digital circuit applications.

## 🚀 Key Features & Architecture
* **IEEE-754 Single-Precision Standard:** Fully complies with sign, exponent, and mantissa handling logic.
* **Vedic Multiplier Optimization:** The 24-bit mantissa multiplication is driven by a high-speed Urdhva-Tiryagbhyam Vedic Multiplier architecture.
* **Optimized Adders:** Implements Ripple Carry Adder (RCA) and Carry Lookahead Adder (CLA) blocks for efficient exponent and mantissa additions.
* **Structural Hierarchy:** Designed using clean, modular sub-blocks for optimal RTL synthesis.

## 📁 Core RTL Modules Included
* `FTP_multiplier_32.v` (Top-level Single Precision Multiplier)
* `vedic_mul24_bit.v` (24-bit Mantissa Multiplier block)
* `adder_24Nbit.v` & `Nbit_adder.v` (High-speed adder architectures)
* `FA.v` & `HA.v` (Fundamental Full-Adder and Half-Adder blocks)

## 🛠️ Tools Used
* **Design & Simulation:** Xilinx Vivado
* **Language:** Verilog HDL
