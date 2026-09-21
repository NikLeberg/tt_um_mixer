v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 450 -820 1250 -420 {flags=graph
y1=-0.016
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.004
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node="v1
v2
v3
v4
osc1
osc2"
color="4 5 6 7 18 4"
unitx=1
logx=0
logy=0
mode=Line
sim_type=tran
dataset=-1
digital=0
rainbow=0
}
N -30 -490 -30 -360 {lab=#net1}
N 30 -490 50 -490 {lab=#net1}
N 350 -470 400 -470 {lab=OSC1}
N 400 -470 400 -140 {lab=OSC1}
N 30 -140 310 -140 {lab=#net1}
N 370 -140 400 -140 {lab=OSC1}
N 30 -490 30 -140 {lab=#net1}
N -30 -490 30 -490 {lab=#net1}
N 350 -430 420 -430 {lab=OSC2}
N 420 -430 420 -80 {lab=OSC2}
N 370 -80 420 -80 {lab=OSC2}
N -60 -80 310 -80 {lab=#net2}
N -60 -450 -60 -80 {lab=#net2}
N -60 -450 50 -450 {lab=#net2}
N -120 -450 -60 -450 {lab=#net2}
N -120 -450 -120 -360 {lab=#net2}
C {iopin.sym} 350 -710 0 0 {name=p1 lab=V1}
C {devices/code_shown.sym} 840 -150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"}
C {devices/code.sym} 830 -350 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.option method=gear
.include 8bit_triangle.spice
.control
op
write tt_um_mixer_tb.raw
set appendwrite
reset
save all
tran 200ns 4ms
write tt_um_mixer_tb.raw
quit 0
.endc
"}
C {title.sym} 160 -30 0 0 {name=l5 author="Niklaus Leuenberger"}
C {launcher.sym} 1120 -250 0 0 {name=h1
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/tt_um_mixer_tb.raw tran"
}
C {launcher.sym} 1120 -290 0 0 {name=h4
descr=simulate
tclcommand="
# run netlist and simulation
xschem netlist
simulate
"}
C {gnd.sym} 95 -180 0 0 {name=l14 lab=0}
C {lab_pin.sym} 50 -710 0 0 {name=p3 sig_type=std_logic lab=Vb0}
C {lab_pin.sym} 50 -690 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} 50 -670 0 0 {name=p4 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} 50 -650 0 0 {name=p5 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} 50 -630 0 0 {name=p6 sig_type=std_logic lab=Vb4}
C {lab_pin.sym} 50 -610 0 0 {name=p7 sig_type=std_logic lab=Vb5}
C {lab_pin.sym} 50 -590 0 0 {name=p8 sig_type=std_logic lab=Vb6}
C {lab_pin.sym} 50 -570 0 0 {name=p9 sig_type=std_logic lab=Vb7}
C {vsource.sym} 690 -220 0 0 {name=Vdd value=1.2 savecurrent=false}
C {gnd.sym} 690 -190 0 0 {name=l2 lab=0}
C {lab_pin.sym} 690 -250 1 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 95 -740 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {iopin.sym} 350 -690 0 0 {name=p13 lab=V2}
C {iopin.sym} 350 -670 0 0 {name=p14 lab=V3}
C {iopin.sym} 350 -650 0 0 {name=p18 lab=V4}
C {tt_um_mixer_pex.sym} 200 -510 0 0 {name=x1}
C {capa.sym} -30 -330 0 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -30 -300 0 0 {name=l1 lab=0}
C {res.sym} 340 -140 1 0 {name=R1
value=20k
footprint=1206
device=resistor
m=1}
C {iopin.sym} 400 -470 3 0 {name=p12 lab=OSC1}
C {capa.sym} -120 -330 0 0 {name=C2
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 340 -80 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {gnd.sym} -120 -300 0 0 {name=l3 lab=0}
C {iopin.sym} 420 -430 3 0 {name=p15 lab=OSC2}
