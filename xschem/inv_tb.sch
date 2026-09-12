v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -100 100 -80 {lab=Vin}
N 100 -100 160 -100 {lab=Vin}
N 200 -70 200 -20 {lab=0}
N 200 -150 200 -130 {lab=#net1}
N 20 -150 200 -150 {lab=#net1}
N 20 -150 20 -80 {lab=#net1}
N 240 -100 260 -100 {lab=Vout}
C {inv.sym} 180 -80 0 0 {name=x1}
C {vsource.sym} 100 -50 0 0 {name=Vin value="pwl(0ms 0 1ms 1.8 2ms 0)" savecurrent=false}
C {vsource.sym} 20 -50 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} 100 -20 0 0 {name=l1 lab=0}
C {gnd.sym} 20 -20 0 0 {name=l2 lab=0}
C {gnd.sym} 200 -20 0 0 {name=l3 lab=0}
C {iopin.sym} 260 -100 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 20 -230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 20 -430 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.control
save all
tran 1us 2ms
plot v(Vout) v(Vin)
plot v(Vout) vs v(Vin) v(Vin) vs v(Vin) retraceplot
.endc
"}
C {lab_pin.sym} 100 -100 0 0 {name=p2 sig_type=std_logic lab=Vin}
