# Liqiud Level Control System
Design of a liquid level control system to control the water level of a tank
![Block diagram](https://github.com/aniekanBane/Liqiud-level-control-system/blob/main/images/Block%20diag.png)

The following information was known about the plant:
![tranfer functions](https://github.com/aniekanBane/Liqiud-level-control-system/blob/main/images/tfcn.png)

## Block reduction
Based on the superposition that there is No 'controller' in the system. The reduced diagram would be the multiplication of the plant tranfer functions:
![closed function](https://github.com/aniekanBane/Liqiud-level-control-system/blob/main/images/reduced.png)

## Controller
A controller was to be designed to satisfy the following conditions:
- The steady state error of the liquid level in the tank < ±0.5%.
- Settling time < 1.5s
- %OS < 5%.

## Stability


