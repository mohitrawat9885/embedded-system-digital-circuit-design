* SPICE export from S-Edit 12.50 Tue Sep 07 10:17:50 2021
* Design:  NAND
* Cell:    Cell0
* View:    view0
* Export as: Top-level Cell
* Netlist port order: default
* Exclude .model : no
* Exclude .end: no
* Expand paths: yes
* Root path: F:\ECE\AnalogDesign\Project_2\NAND
* Exclude global pins on subcircuits: no
* Export control property name: SPICE
* Wrap lines: no (to 0 characters)

********* Simulation Settings - General section *********

********* Simulation Settings - Parameters and SPICE Options *********

MMOSFET_N_1 C B N_1 N_1 NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
MMOSFET_N_2 N_1 A Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
MMOSFET_P_1 C A Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
MMOSFET_P_2 C B Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u


.Model NMOS NMOS(Vto=0.8V Kp=45u Lambda=0.01 Gamma=0.4 phi=0.6)
.Model PMOS PMOS (Vto=-0.9V Kp=33u Lambda=0.02 Gamma=0.4 phi=0.6)
Vdd Vdd Gnd 3.3V
Vin1 A Gnd pulse(0 3.3v 0 1n 1n 10n 20n)
Vin2 B Gnd pulse(0 3.3v 0 1n 1n 10n 20n)
.Tran 1ns 100ns
**.dc Vin 0 3.3v 1.1v
**.power Vdd 1n 10000ns
.print V(A) V(B) V(C)
.end
********* Simulation Settings - Analysis section *********

********* Simulation Settings - Additional SPICE commands *********

.end

