v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 390 -680 1190 -280 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.002
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="vin
vout
c"
color="8 4 7"
dataset=-1
unitx=1
logx=0
logy=0
rainbow=0}
N 240 -180 240 -160 {lab=Vin}
N 440 -180 460 -180 {lab=Vout}
N 440 -180 440 -160 {lab=Vout}
N 420 -180 440 -180 {lab=Vout}
N 240 -180 340 -180 {lab=Vin}
N 360 -140 360 -100 {lab=0}
C {vsource.sym} 240 -130 0 0 {name=Vin value="pwl(0ms 0 1ms 1.2 2ms 0)" savecurrent=false}
C {vsource.sym} 40 -130 0 0 {name=Vdd value=1.2 savecurrent=false}
C {gnd.sym} 240 -100 0 0 {name=l1 lab=0}
C {gnd.sym} 40 -100 0 0 {name=l2 lab=0}
C {iopin.sym} 460 -180 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 40 -480 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code.sym} 30 -640 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.control
op
write t_gate_tb.raw
set appendwrite
reset
save all
tran 1us 2ms
write t_gate_tb.raw
quit 0
.endc
"}
C {lab_pin.sym} 240 -180 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {capa-2.sym} 440 -130 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 440 -100 0 0 {name=l4 lab=0}
C {title.sym} 160 -30 0 0 {name=l5 author="Niklaus Leuenberger"}
C {launcher.sym} 620 -140 0 0 {name=h1
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/t_gate_tb.raw tran"
}
C {launcher.sym} 620 -180 0 0 {name=h4
descr=simulate
tclcommand="
# run netlist and simulation
xschem netlist
simulate
"}
C {t_gate.sym} 380 -180 0 0 {name=x1}
C {gnd.sym} 360 -100 0 0 {name=l3 lab=0}
C {lab_pin.sym} 40 -160 1 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -220 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -250 1 0 {name=p5 sig_type=std_logic lab=C}
C {lab_pin.sym} 380 -140 3 0 {name=p7 sig_type=std_logic lab=C}
C {lab_pin.sym} 380 -220 1 0 {name=p8 sig_type=std_logic lab=!C}
C {vsource.sym} 80 -220 0 0 {name=Vc value="pulse 0 1.2 .09m 1u 1u .01m .1m" savecurrent=false}
C {vsource.sym} 120 -310 0 0 {name=Vnc value="pulse 1.2 0 .09m 1u 1u .01m .1m" savecurrent=false}
C {gnd.sym} 80 -190 0 0 {name=l7 lab=0}
C {gnd.sym} 120 -280 0 0 {name=l8 lab=0}
C {lab_pin.sym} 120 -340 1 0 {name=p6 sig_type=std_logic lab=!C}
