# Engineering Mathematics: System Analysis using Matlab

This repository demonstrates the use of Laplace Transforms to solve complex differential equations—a core skill in Control Systems and Electrical Engineering.

## Project Structure

### 1. Second-Order System Response (`second_order_ode_response.m`)
* **Problem**: Solving $y'' + 4y' + 3y = e^{-t}$ with initial conditions $y(0)=0$ and $y'(0)=0$.
* **Visualization**: Plots the stabilization curve showing the system's time-domain response.



### 2. Laplace Transform Verification (`laplace_transform_verification.m`)
* **Problem**: Calculating $L\{5e^{2t} + 6t^3 - 3\sin(4t)\}$.
* **Goal**: Computational verification of manual mathematical derivations.

### 3. Initial Value Problem Solver (`ivp_first_order_solver.m`)
* **Problem**: Solving $y' - 2y = 4$ where $y(0) = -1$.

### 4. Non-Homogeneous Systems (`non_homogeneous_ode_solver.m`)
* **Problem**: Solving $y'' - 3y' + 2y = 4e^{2t}$ with $y(0)=-3, y'(0)=5$.

## Documentation
The **[Matlab.pdf](./Matlab.pdf)** file contains the full mathematical derivations and problem statements.
