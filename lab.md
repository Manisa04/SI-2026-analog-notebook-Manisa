# Lab Notebook

* **Day 1 (May 25, Mon)**

# Lab 1: Linux, Vim and Git

## 1. BASIC LINUX COMMANDS

Commands used are:

- `echo`
- `pwd`
- `cd`
- `ls` 
- `mkdir`
- `touch`
- `rm`
- `rmdir` and others

```bash
cd
echo "HELLO, LINUX"
pwd
ls
cd ..
cd -
mkdir manisa
cd manisa

mkdir dir1 dir2 dir3
ls

touch file1.txt
touch file2.txt
ls

rm file1.txt
rmdir dir3

pwd
```

# Lab 2: NGSPICE

## 1. VOLTAGE DIVIDER

Voltage Divider Netlist/Circuit was simulated successfully.

```spice
* This is netlist/circuit of a simple voltage divider

R1 vin vout 1K
R2 vout 0 1K

* Pulse Stimulus
Vpulse vin 0 PULSE(0 5 0.5u 10n 10n 0.5u 1u)

* Transient Analysis
.TRAN 0.1u 1.5u

.control
RUN
PLOT V(vout)
.endc

.end
```

### Observation

The output voltage is approximately half of the input voltage due to the equal resistor values used in the voltage divider circuit. The transient response confirms the expected voltage division behavior.

![Voltage Divider Output](doc/VOLTAGE%20DIVIDER1.png)

## 2. ID vs VGS

The variation of drain current with gate-source voltage was analyzed.

```spice
* Title: Id-vs-Vgs for NMOS in Saturation Region

* Level-1 Model
.MODEL nmos1 NMOS (LEVEL=1 PHI=0.846 VTO=0.514 KP=122U GAMMA=0.55 LAMBDA=0.0)

* Set the device temperature
.TEMP 27

* Netlist
M2 D2 D2 0 B nmos1 W=5u L=1u
Vds D 0 DC 5
Vid2 D D2 DC 0
Vsb 0 B DC 0

* DC Sweep Analysis
.DC Vds 0 5 0.001 Vsb 0 1 0.5

.CONTROL
RUN
PLOT Vid2#branch VS V(D)
PLOT (2*Vid2#branch)^0.5 VS V(D)
.ENDC

.END
```

### Observation

The drain current ($I_D$) increases with increasing gate-source voltage ($V_{GS}$). The plotted characteristics verify the square-law behavior of the NMOS transistor operating in the saturation region. Different body bias ($V_{SB}$) values shift the characteristics due to the body effect.

### Output Plot (ID vs VDS)

![ID vs VDS](doc/ID%20VS%20VDS3.png)

### Output Plot (√ID vs VDS)

![√ID vs VDS](doc/ID%20VS%20VGS2.png)
