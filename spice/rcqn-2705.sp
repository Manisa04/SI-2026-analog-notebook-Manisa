* RC Low Pass Circuit - Pulse Response
* R = 1k ohm
* C = 1pF

vin in 0 PULSE(0 5 0 1n 1n 10n 20n)

R1 in out 1k
C1 out 0 50p

.tran 0.1n 400n

.control
run
plot v(in) v(out)
 .MEASURE TRAN tr1090 TRIG v(vout) VAL='0.1*PAR_VDD' RISE=1 TARG v(vout) VAL='0.9*PAR_VDD' RISE=1
.MEASURE TRAN tdfall TRIG v(vin)  VAL='0.5*PAR_VDD' RISE=1 TARG v(vout) VAL='0.5*PAR_VDD' FALL=1
.MEASURE TRAN iavg AVG vsup#branch FROM=PAR_DEL TO='PAR_DEL+PAR_PER'
.endc

.end
