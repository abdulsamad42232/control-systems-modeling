# Series RLC Circuit State-Space Simulation

## Project Overview

This MATLAB project simulates the time-domain transient response of a series RLC (Resistor-Inductor-Capacitor) circuit. By modeling the circuit using state-space differential equations, the script calculates and visualizes the capacitor voltage and circuit current over time when subjected to a constant DC voltage source.

This project demonstrates the application of Kirchhoff's Voltage Law (KVL) and numerical integration (`ode45`) to analyze electrical system dynamics.

## System Description

The circuit is modeled as a series loop containing a DC voltage source, a resistor, an inductor, and a capacitor. The system is defined by the following state variables:

* $X_1 = V_c$ (Capacitor Voltage)
* $X_2 = i$ (Circuit Current)

### Circuit Parameters

* **Input Voltage ($e$):** `60 V` (Constant DC Step)
* **Resistance ($R$):** `10 \Omega`
* **Inductance ($L$):** `1 H`
* **Capacitance ($C$):** `10 F`
* **Initial Conditions:** `Vc = 0 V`, `i = 0 A`

## Code Structure

The project consists of two parts:

1. **`RLC(t, X)`:** A custom MATLAB function that defines the system's state derivatives based on physical component values. It outputs the rate of change for the capacitor voltage and the circuit current.
2. **Main Execution Script:** Defines the initial zero-state conditions, runs the `ode45` numerical solver from `t = 0` to `t = 500` seconds, and generates side-by-side subplots plotting the system's response.

## How to Run

1. Ensure MATLAB is installed.
2. Save the main script and the `RLC` function in your working directory.
3. Run the main script.
4. A figure window will appear with two subplots:
* **Top Plot:** Capacitor Voltage ($V_c$) as it charges over time toward the steady-state source voltage.
* **Bottom Plot:** Circuit Current ($i$) as it peaks and eventually decays to zero once the capacitor is fully charged.



---

To help you visualize how changing your resistor, inductor, or capacitor values affects the damping and speed of this circuit, I've generated an interactive simulator below. Notice what happens to the current when you drastically lower the capacitance!