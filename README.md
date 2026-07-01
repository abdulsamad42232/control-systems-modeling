# Dynamic Systems and Control Simulations

## Overview
This repository contains a collection of MATLAB-based simulations focusing on the mathematical modeling, state-space representation, and transient response analysis of dynamic physical systems. 

The projects demonstrate the application of Feedback Control System principles to both mechanical and electrical domains, utilizing numerical integration (e.g., `ode45`) and transfer function analysis to evaluate system behavior in the time and frequency domains.

## Repository Structure
This repository is divided into four distinct simulation projects:

### 1. Two-Mass Spring-Damper System Simulation
* **Domain:** Mechanical Systems
* **Description:** Simulates the dynamic step response of a coupled, two-degree-of-freedom (2-DOF) mass-spring-damper system. The differential equations of motion are derived using Newton's Second Law and converted into a four-variable state-space model to observe position and velocity over time.

### 2. Second-Order System Step Response Analyzer
* **Domain:** Control Theory / Frequency Domain
* **Description:** An algorithmic tool that takes the damping ratio ($\zeta$) and natural frequency ($\omega_n$) of a standard second-order system to generate its transfer function. It plots the unit step response and programmatically extracts key transient metrics: Rise Time, Delay Time, Peak Time, Maximum Overshoot, and Settling Time.

### 3. Series RLC Circuit State-Space Simulation
* **Domain:** Electrical Systems
* **Description:** Models a second-order series RLC (Resistor-Inductor-Capacitor) circuit using Kirchhoff's Voltage Law (KVL). The project solves the resulting state-space equations to visualize the capacitor voltage and circuit current transients in response to a continuous DC step voltage.

### 4. Two-Loop RLC Circuit State-Space Simulation
* **Domain:** Electrical Systems
* **Description:** An advanced simulation of a highly coupled, third-order dynamic system. By applying both KVL and KCL, the circuit is modeled using three state variables to track the independent loop currents and the shared capacitor voltage.

## Technologies & Methodologies
* **Language:** MATLAB
* **Core Concepts:** * State-Space Modeling ($\dot{x} = Ax + Bu$)
    * Transfer Functions ($s$-domain)
    * Numerical Integration (`ode45`)
    * Transient Response Analysis (Overshoot, Settling Time, etc.)
    * KVL, KCL, and Newton's Laws of Motion

## How to Use
1. Clone this repository to your local machine:
   ```bash
   git clone [https://github.com/abdulsamad42232/control-systems-modeling.git]


2. Open MATLAB and navigate to the cloned directory.
3. Open any of the sub-folders and run the respective `main.m` or executable script to generate the system response plots. Each sub-folder contains its own specific documentation for precise parameter adjustments.

## Author

**Abdul Samad Khan**
