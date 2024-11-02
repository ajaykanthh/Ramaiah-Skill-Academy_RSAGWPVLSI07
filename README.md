# Files in the Mat Lab and Simulink branch:
This branch focuses on the development and simulation of systems using MATLAB and Simulink. It includes models and scripts for various applications, emphasizing efficient design and implementation. The integration of MATLAB's computational capabilities with Simulink's graphical modeling environment allows for robust simulation of dynamic systems.
## File Description

- [Plot Random Numbers](#plot-random-numbers)
- [Trajectory Projectile Calculation](#trajectory-projectile-calculation)
- [PID Transfer Function 1](#pid-transfer-function-1)
- [PID Transfer Function 2](#pid-transfer-function-2)
- [Water Tank Temperature Monitoring](#water-tank-temperature-monitoring)
- [Elevator Application](#elevator-application)
- [RC Circuit Charging and Discharging of Capacitor](#rc-circuit-charging-and-discharging-of-capacitor)
- [Washing Machine](#washing-machine)

## Plot Random numbers
File name:plot_random.m<br>
This code generates two distinct plots using randomly generated data. First, it prompts the user to input a limit, which defines the range for the x-axis. The y-values are randomly generated integers between 1 and 15. A line plot with markers is created in the left subplot, labeled "Approach One," showcasing the relationship between the x-values and y-values. In the second subplot, labeled "Approach Two," another set of x and y values is randomly generated, this time within the range of 1 to 6. Both plots feature line styles with circular markers and have axes labeled accordingly. The overall structure allows for visual comparison of two different approaches using randomly generated data sets.<br/><br/>
<img src="https://github.com/user-attachments/assets/fd81f82a-2086-49ec-ae67-493c49fedb45" alt="Analysis Plot" width="350" height="350"><br>
Fig:Sample Output

## Trajectory Projectile Calculation
File Name:trajectory_Projectile.m<br>
function calculates the maximum height and range of a projectile launched at a fixed angle of 45 degrees. It takes an array of initial velocities and uses the sine of the launch angle to compute the maximum height and horizontal range for each velocity. The gravitational acceleration is set at 9.81 m/s². The function employs two loops: <br/>The first calculates the maximum height using the formula: *h=v2sin⁡2(θ)2/2gh<br>  The second calculates the range using:R=v2sin⁡(2θ)gR=gv2sin(2θ)​*. <br/>The results are displayed in arrays and visualized using a plot that represents the relationship between range and maximum height. The plot is customized with labels and a title for clarity. This function provides valuable insights into projectile motion, illustrating how initial velocity affects both the range and height of the projectile.The final output graph:<br/><br/><img src="https://github.com/user-attachments/assets/2f414030-7c0e-4cd9-a4c3-eb034ec66dac" alt="Analysis Plot" width="350" height="350"><br>
Fig:Range vs Height graph

## PID Transfer Function 1
File 3:pid_1.slx
The control system features a feedback loop comprising a summation block, a PID controller, and a transfer function to achieve the desired output based on error correction.<br/>
* *Input Signal:* A step input serves as the setpoint, providing a reference for the system to follow.<br/>
* *Error Calculation:* A summation block calculates the difference between the input signal and feedback, generating an error signal to guide the PID controller.<br/>
* *PID Control & Transfer Function:* The error signal is processed by the PID controller, which adjusts the control output.<br/>This output is fed into the transfer function:  *s3−s+10s4+3s2−20/s4+3s2−20s3−s+10​*  to model the system’s dynamic response.<br/>
* *Visualization*:The processed signal is directed to a scope block to observe and analyze the system’s response to the input over time.
<p align="center">
<img src="https://github.com/user-attachments/assets/50e2504f-879a-4f50-b0c8-0b2c52107b91" alt="Image 2" width="45%" style="display: inline-block;"/>
<img src="https://github.com/user-attachments/assets/c3c8c681-f021-4cc5-9011-700bc81ccd4b" alt="Image 1" width="45%" style="display: inline-block;"/>
</p>

Fig:(Right)Tuned parameters with stable system.(Left):Graph analysis
## PID Transfer Function 2
File 4:pid_2.slx
* *Feedback Control System:* Represents a feedback loop with a step input, summation block, PID controller, and a transfer function to maintain a stable output based on error correction.<br/>
* *Error Calculation:* The step input signal is compared with the feedback signal, generating an error used to guide system corrections.<br/>
* *PID Control:* The PID controller processes the error signal using proportional, integral, and derivative gains to adjust the control signal.<br/>
* *Transfer Function:* The adjusted signal passes through the transfer function:
   *s3+2s2+s+10s4+3s−20/s4+3s−20s3+2s2+s+10​* <br/>which models the system's response to the control input.<br/>
* *Graph Visualization:* The system’s output is visualized using a scope block, showing how the system tracks and responds to the input signal over time.<br/>
<p align="center">
  <img src="https://github.com/user-attachments/assets/683e3962-8283-49e8-b916-8f316852714b" alt="Image 2" width="45%" style="display: inline-block;"/>
  <img src="https://github.com/user-attachments/assets/0526f7db-9a81-48f1-aeb0-d2d7651364bb" alt="Image 2" width="45%" style="display: inline-block;"/>
</p><br/>

Fig:(Right)Tuned parameters with stable system.(Left):Graph analysis.
## Water Tank Temperature monitoring
File 5:room_temp.slx

* *Water Tank:* Contains water with an initial temperature.<br/>
* *Heat Source:* Adds energy (heat) to the water tank.<br/>
* *Energy Balance Equation:* Temperature change rate is given by *dTdt=Qm⋅CpdtdT​=m⋅Cp​Q​.* <br/>
* *Variables:*<br/>
    * *TT:* Water temperature in °C.<br/>
    * *QQ:* Heat input in Watts (Joules/second).<br/>
    * *mm:* Mass of water, set to *10 kg.*<br/>
    * *CpCp​:* Specific heat capacity of water, set to *4.18 kJ/(kg·°C).*<br/>
* *Model Parameters:* Using a gain block with Gain=*110×4180Gain=10×41801​*.<br/>
* *Simulation Output:* Displays the increasing temperature of the water over time as energy is continuously added from the heat source.<br/>
![heat_temp](https://github.com/user-attachments/assets/ae890dad-b1d0-47c7-8ab4-b4b74f41db1f)
Fig:Heat vs Time.
## Elevator Application
file name:lift_stateflow.slx
<br/>This file contains a Stateflow chart for an elevator control system featuring distinct states for each floor (Floor 1, Floor 2, Floor 3). The system includes transitions for moving Up and Down between floors, alongside logic for opening and closing doors. It manages two operational statuses: status_off and status_on, ensuring smooth functionality. The design demonstrates effective state management and transition handling for elevator control. This model serves as a foundational example for understanding Stateflow applications in control systems.<br/>
![lift](https://github.com/user-attachments/assets/f6e97fec-1476-40af-af0f-674bf0500fba)<br/>
Fig:Designed stateflow for implemented logic.



## RC Circuit Charging and Discharging of Capacitor
file name:RC_calculation.slx
<br/>
This file implements a Simulink model to simulate the response of an RC circuit to a step input voltage using a stair generator. The model uses a stair generator with defined time intervals [0,2,4,6,8,10][0,2,4,6,8,10] seconds and corresponding amplitudes [1,5,1,5,0,5][1,5,1,5,0,5] volts to observe the charging and discharging behavior of the capacitor. The simulation results include the charging and discharging curves, allowing for an analysis of the time constant of the RC circuit.<br/>
<br/>
![image](https://github.com/user-attachments/assets/dc491667-60e0-463d-84a4-9afec5f69a8a)
Fig:The graph above represents the charging and discharging curves of the capacitor over time.
## Washing Machine
fil name:washingMachine.slx
<br/>
This file simulates a washing machine cycle using a Stateflow chart with various operational states, including *Power Off, Power On, Wash, Valve, Rinse, Spin, and Done. The system monitors water levels with states such as **Water Low, Water State, and Water Highto ensure proper functionality throughout the cycle. Upon powering on, the machine transitions through **filling water, washing, rinsing, and spinning*,before signaling that the cycle is complete. Each state defines specific actions and conditions for transitioning to the next phase, providing a clear visualization of the washing process. This model serves as an educational tool to understand state-based control systems and their applications in real-world scenarios.<br/>
* *Key Features:*<br/>
    * State management for washing machine operations.<br/>
    * Conditional transitions based on water levels.<br/>
    * Clear definition of state actions for a realistic simulation.<br/>
*State transitions chart*
![washing_machine](https://github.com/user-attachments/assets/61522a22-66a2-4139-b2f3-bce362017762)
