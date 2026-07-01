# Two-Mass Spring-Damper System Simulation

## Project Overview

This project simulates the dynamic response of a coupled two-degree-of-freedom (2-DOF) mass-spring-damper system using MATLAB. The script models the state-space representation of the mechanical system and evaluates its open-loop step response over a specified time domain using the `ode45` numerical solver.

This is a foundational project for Feedback Control Systems, demonstrating how to translate physical differential equations into computational models to analyze transient and steady-state behaviors.

## System Description

The mechanical system consists of two masses ($M_1$ and $M_2$):

* Both masses are grounded via independent springs ($K_1, K_2$) and dampers ($B_1, B_2$).
* The masses are dynamically coupled to one another via a central damper ($B_3$).
* A continuous external step force ($F_a$) is applied to Mass 1.

### Parameters Used

* **Masses:** `M1 = 750 kg`, `M2 = 750 kg`
* **Spring Stiffness:** `K1 = 5 N/m`, `K2 = 5 N/m`
* **Damping Coefficients:** `B1 = 20 Ns/m`, `B2 = 20 Ns/m`, `B3 = 30 Ns/m` (Coupling Damper)
* **Input Force:** `Fa = 300 N` (applied to $M_1$)

## Code Structure

The MATLAB code is divided into two primary parts:

1. **`func(t, X)`**: A custom function containing the state-space matrix representations of the physical system. It defines the state derivatives (velocity and acceleration) for both masses.
2. **Main Execution Script**: Defines initial conditions (all starting at zero), runs the `ode45` solver from `t = 0` to `t = 800` seconds, and generates side-by-side plots of the position and velocity for both masses.

## How to Run

1. Ensure you have MATLAB installed.
2. Save the provided code into a file named `main.m` (or ensure the function is saved in the same directory if separated).
3. Run the script.
4. A figure window will appear containing two subplots:
* **Top Plot:** Position ($x_b$) and Velocity ($V_b$) of Mass 2 over time.
* **Bottom Plot:** Position ($x_a$) and Velocity ($V_a$) of Mass 1 over time.



---

Would you like me to help you take this project to the next level by designing a PID controller for it, or perhaps showing you how to find the system's Transfer Function?
