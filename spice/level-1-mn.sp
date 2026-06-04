* RC circuit response

V1 in 0 PULSE(0 5 0 1p 1p 10n 20n)

R1 in out 1k
C1 out 0 1p

.tran 1p 20n

.measure tran trise TRIG v(out) VAL=0.5 RISE=1 TARG v(out) VAL=4.5 RISE=1
.measure tran tfall TRIG v(out) VAL=4.5 FALL=1 TARG v(out) VAL=0.5 FALL=1

.CONTROL
run
plot v(in) v(out)
print trise
print tfall
.endc

.end
