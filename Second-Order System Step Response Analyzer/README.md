### **Suggested README.md**

You can copy and paste the text below directly into your project's `README.md` file.

---

# Second-Order System Step Response Analyzer

## Project Overview

This MATLAB script analyzes the transient response of a standard second-order continuous-time system. By inputting the system's damping ratio ($\zeta$) and natural frequency ($\omega_n$), the program generates the transfer function, plots the step response, and algorithmically extracts key time-domain specifications from the simulated data.

## System Description

The system is modeled using the standard second-order transfer function:
`G(s) = (wn^2) / (s^2 + 2*zeta*wn*s + wn^2)`

The script applies a unit step input and evaluates the resulting output array to calculate performance criteria essential for control system design and evaluation.

### Key Metrics Calculated

* **Rise Time ($t_r$):** Time required for the response to rise from 10% to 90% of its final value.
* **Delay Time ($t_d$):** Time required to reach 50% of the final value.
* **Peak Time ($t_p$):** Time at which the maximum overshoot occurs.
* **Maximum Overshoot ($M_p$):** The maximum peak value of the response curve measured from the final steady-state value.
* **Settling Time ($t_s$):** Time required for the response curve to reach and stay within a 2% tolerance band of the final steady-state value.

## How to Run

1. Open the script in MATLAB.
2. Run the script.
3. The command window will prompt you to:
* `Enter the value of damping ratio:` (e.g., enter 0.5 for an underdamped system)
* `Enter the value of Natural frequency:` (e.g., enter 5)


4. The script will output the calculated transfer function and print the five time-domain specifications to the console.
5. A figure window will automatically open displaying the plotted Step Response grid.

## Code Notes

* The algorithm determines the transient metrics by iterating through the generated response arrays (`y` and `t`) rather than relying purely on MATLAB's built-in `stepinfo` function, demonstrating a clear understanding of how these metrics are derived from raw data.
* The time domain for the simulation is currently set from `t = 0` to `t = 6.0` seconds. For highly damped or low-frequency systems, this vector may need to be extended to capture the true steady-state value.

---

To help you fully grasp how these metrics change, I've generated an interactive visualizer below. You can adjust the damping ratio and natural frequency just like you would in your MATLAB prompt and watch how it affects the step response curve, overshoot, and settling time!