# Two-Loop RLC Circuit State-Space Simulation

## Project Overview

This MATLAB project models and simulates the time-domain transient response of a two-loop, third-order RLC circuit. By deriving the state-space representation from Kirchhoff's Laws (KVL and KCL), the script utilizes the `ode45` numerical solver to track the currents and voltages across the circuit components over time when subjected to a constant DC step voltage.

## System Description

The circuit consists of a primary loop with an inductor and resistor, which then splits into two parallel branches: one containing a capacitor, and the other containing a second inductor and resistor combination.

Because there are three energy-storage elements (two inductors, one capacitor), this is a 3rd-order dynamic system. The state variables are defined as:

* $X_1 = i_1$ (Current through Loop 1: $R_1, L_1$)
* $X_2 = i_2$ (Current through Loop 2: $R_2, L_2$)
* $X_3 = V_c$ (Voltage across the shared Capacitor $C$)

### Circuit Parameters

* **Input Voltage ($e$):** `60 V` (Constant DC Step)
* **Resistances:** `R1 = 10 \Omega`, `R2 = 10 \Omega`
* **Inductances:** `L1 = 1 H`, `L2 = 1 H`
* **Capacitance:** `C = 10 F`
* **Initial Conditions:** Zero-state (`i1 = 0 A`, `i2 = 0 A`, `Vc = 0 V`)

## Code Structure

1. **`RLC(t, X)`:** A custom MATLAB function containing the mathematically derived $3 \times 3$ state-space matrix. It outputs the rate of change for both loop currents and the capacitor voltage ($\frac{di_1}{dt}, \frac{di_2}{dt}, \frac{dV_c}{dt}$).
2. **Main Execution Script:** Defines the initial conditions, executes the `ode45` numerical integration over a `500` second time domain, and generates subplots to visualize the system's dynamic response.

## How to Run

1. Ensure MATLAB is installed.
2. Save both the main script and the `RLC` function file in your current working directory.
3. Execute the main script.
4. A figure window will map the dynamic step response of the components, demonstrating how the currents and voltages oscillate and eventually settle into their steady-state values.

---

Because this system is highly coupled (changing $R_1$ affects $i_2$, etc.), it can be hard to visualize how the math behaves. I've built an interactive simulation of your exact 3rd-order differential equations below. Try adjusting the values to see how the two loops interact!