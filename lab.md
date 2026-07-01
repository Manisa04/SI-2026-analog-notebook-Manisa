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

![Voltage Divider Output](images/DIVIDER1.png)

