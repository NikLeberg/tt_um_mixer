v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 360 -790 1160 -390 {flags=graph
y1=-0.0021
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0011
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
legendmag=1.0
node=vout
color=8
unitx=1
logx=0
logy=0
mode=Line
sim_type=tran
sweep="vin"
dataset=-1
digital=0}
N 860 -270 880 -270 {lab=Vout}
N 860 -270 860 -160 {lab=Vout}
N 720 -160 720 -100 {lab=0}
N 620 -200 660 -200 {lab=Vb7}
N 620 -200 620 -160 {lab=Vb7}
N 540 -220 540 -160 {lab=Vb6}
N 540 -220 660 -220 {lab=Vb6}
N 460 -240 660 -240 {lab=Vb5}
N 460 -240 460 -160 {lab=Vb5}
N 380 -260 380 -160 {lab=Vb4}
N 380 -260 660 -260 {lab=Vb4}
N 300 -280 660 -280 {lab=Vb3}
N 300 -280 300 -160 {lab=Vb3}
N 220 -300 220 -160 {lab=Vb2}
N 220 -300 660 -300 {lab=Vb2}
N 140 -320 660 -320 {lab=Vb1}
N 140 -320 140 -160 {lab=Vb1}
N 60 -340 60 -160 {lab=Vb0}
N 60 -340 660 -340 {lab=Vb0}
N 830 -270 860 -270 {lab=Vout}
C {iopin.sym} 880 -270 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 50 -520 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code.sym} 40 -720 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.option method=gear
.control
op
write r2r_tb.raw
set appendwrite
reset
save all
tran 1us 1.1ms
write r2r_tb.raw
quit 0
.endc
"}
C {capa-2.sym} 860 -130 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 860 -100 0 0 {name=l4 lab=0}
C {title.sym} 160 -30 0 0 {name=l5 author="Niklaus Leuenberger"}
C {launcher.sym} 1030 -250 0 0 {name=h1
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/r2r_tb.raw tran"
}
C {launcher.sym} 1030 -290 0 0 {name=h4
descr=simulate
tclcommand="
# run netlist and simulation
xschem netlist
simulate
"}
C {r2r.sym} 660 -160 0 0 {name=x1}
C {sqwsource.sym} 620 -130 0 0 {name=Vb7 vhi=1.2 freq=1k}
C {sqwsource.sym} 540 -130 0 0 {name=Vb6 vhi=1.2 freq=2k}
C {sqwsource.sym} 460 -130 0 0 {name=Vb5 vhi=1.2 freq=4k}
C {sqwsource.sym} 380 -130 0 0 {name=Vb4 vhi=1.2 freq=8k}
C {sqwsource.sym} 300 -130 0 0 {name=Vb3 vhi=1.2 freq=16k}
C {sqwsource.sym} 220 -130 0 0 {name=Vb2 vhi=1.2 freq=32k}
C {sqwsource.sym} 140 -130 0 0 {name=Vb1 vhi=1.2 freq=64k}
C {sqwsource.sym} 60 -130 0 0 {name=Vb0 vhi=1.2 freq=128k}
C {gnd.sym} 620 -100 0 0 {name=l6 lab=0}
C {gnd.sym} 540 -100 0 0 {name=l7 lab=0}
C {gnd.sym} 460 -100 0 0 {name=l8 lab=0}
C {gnd.sym} 380 -100 0 0 {name=l9 lab=0}
C {gnd.sym} 300 -100 0 0 {name=l10 lab=0}
C {gnd.sym} 220 -100 0 0 {name=l11 lab=0}
C {gnd.sym} 140 -100 0 0 {name=l12 lab=0}
C {gnd.sym} 60 -100 0 0 {name=l13 lab=0}
C {gnd.sym} 720 -100 0 0 {name=l14 lab=0}
C {lab_pin.sym} 60 -340 0 0 {name=p3 sig_type=std_logic lab=Vb0}
C {lab_pin.sym} 140 -320 0 0 {name=p2 sig_type=std_logic lab=Vb1}
C {lab_pin.sym} 220 -300 0 0 {name=p4 sig_type=std_logic lab=Vb2}
C {lab_pin.sym} 300 -280 0 0 {name=p5 sig_type=std_logic lab=Vb3}
C {lab_pin.sym} 380 -260 0 0 {name=p6 sig_type=std_logic lab=Vb4}
C {lab_pin.sym} 460 -240 0 0 {name=p7 sig_type=std_logic lab=Vb5}
C {lab_pin.sym} 540 -220 0 0 {name=p8 sig_type=std_logic lab=Vb6}
C {lab_pin.sym} 620 -200 0 0 {name=p9 sig_type=std_logic lab=Vb7}
