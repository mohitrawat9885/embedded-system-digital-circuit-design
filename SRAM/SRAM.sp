* SPICE export from S-Edit 12.50 Tue Nov 23 10:14:33 2021
* Design:  SRAM
* Cell:    SRAM
* View:    view0
* Export as: Top-level Cell
* Netlist port order: default
* Exclude .model : no
* Exclude .end: no
* Expand paths: yes
* Root path: D:\ECE\AnalogDesign\SRAM
* Exclude global pins on subcircuits: no
* Export control property name: SPICE
* Wrap lines: no (to 0 characters)

********* Simulation Settings - General section *********

********* Simulation Settings - Parameters and SPICE Options *********

MMOSFET_N_1 Q Q_Br Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
MMOSFET_N_2 Q_Br Q Gnd Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
MMOSFET_N_3 Q_Br WL BL_Br Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
MMOSFET_P_1 Q_Br Q Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u
MMOSFET_N_4 Q WL BL Gnd NMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u 
MMOSFET_P_2 Q Q_Br Vdd Vdd PMOS L=2u W=22u AD=66p PD=24u AS=66p PS=24u

********* Simulation Settings - Analysis section *********
.Model NMOS NMOS(Vto=0.8V Kp=45u Lambda=0.01 Gamma=0.4 phi=0.6)
.Model PMOS PMOS (Vto=-0.9V Kp=33u Lambda=0.02 Gamma=0.4 phi=0.6)

Vdd Vdd Gnd 5V

Vin1 BL Gnd pulse(0 5v 0 1n 1n 10n 20n)
Vin2 BL_Br Gnd pulse(5v 0 0 1n 1n 10n 20n)
Vin3 WL Gnd pulse(0 5v 0 1n 1n 35n 75n)

.Tran 1ns 200ns

.print V(BL) V(BL_Br) V(WL) V(Q) V(Q_Br)
********* Simulation Settings - Additional SPICE commands *********

.end

