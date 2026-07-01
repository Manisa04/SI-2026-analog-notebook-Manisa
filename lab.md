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

### Observation

The output voltage is approximately half of the input voltage due to the equal resistor values used in the voltage divider circuit. The transient response confirms the expected voltage division behavior.


## 2. ID vs VGS

The variation of drain current with gate-source voltage was analyzed.

### Observation

The drain current ($I_D$) increases with increasing gate-source voltage ($V_{GS}$). The plotted characteristics verify the square-law behavior of the NMOS transistor operating in the saturation region. Different body bias ($V_{SB}$) values shift the characteristics due to the body effect.

