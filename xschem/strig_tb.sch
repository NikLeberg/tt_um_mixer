v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 410 -640 1210 -240 {flags=graph
y1=-0.0021
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.2
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
dataset=5
digital=0}
T {tcleval(WN1+2: [to_eng [xschem raw value wn12_val \{\}]])} 190 -580 0 0 0.4 0.4 {floater=1}
T {tcleval(WN3: [to_eng [xschem raw value wn3_val \{\}]])} 220 -550 0 0 0.4 0.4 {floater=1}
T {tcleval(Vth: [to_eng [xschem raw value vth_val \{\}]])} 232.5 -520 0 0 0.4 0.4 {floater=1}
T {tcleval(Vtl: [to_eng [xschem raw value vtl_val \{\}]])} 240 -490 0 0 0.4 0.4 {floater=1}
T {tcleval(Vhy: [to_eng [xschem raw value vhys_val \{\}]])} 230 -460 0 0 0.4 0.4 {floater=1}
N 120 -200 120 -180 {lab=Vin}
N 220 -250 220 -230 {lab=#net1}
N 40 -250 220 -250 {lab=#net1}
N 40 -250 40 -180 {lab=#net1}
N 320 -200 340 -200 {lab=Vout}
N 320 -200 320 -180 {lab=Vout}
N 260 -200 320 -200 {lab=Vout}
N 120 -200 180 -200 {lab=Vin}
N 220 -170 220 -120 {lab=0}
C {vsource.sym} 120 -150 0 0 {name=Vin value="pwl(0ms 0 1ms 1.2 2ms 0)" savecurrent=false}
C {vsource.sym} 40 -150 0 0 {name=Vdd value=1.2 savecurrent=false}
C {gnd.sym} 120 -120 0 0 {name=l1 lab=0}
C {gnd.sym} 40 -120 0 0 {name=l2 lab=0}
C {gnd.sym} 220 -120 0 0 {name=l3 lab=0}
C {iopin.sym} 340 -200 0 0 {name=p1 lab=Vout}
C {devices/code_shown.sym} 40 -330 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code.sym} 40 -530 0 0 {name=NGSPICE only_toplevel=true
value="
.param temp=27
.param WN12=.15u
.param WN3=.15u
.option method=gear
.control
op
write strig_tb.raw
set appendwrite
foreach wn12 .15u .30u .60u .90u 1.2u 1.5u
foreach wn3 .15u .30u .60u .90u 1.2u 1.5u
  alterparam WN12 = $wn12
  alterparam WN3 = $wn3
  reset
  save all
  tran 1us 2ms
  let wn12_val = 0*time + $wn12
  let wn3_val = 0*time + $wn3
  meas tran vt_fall find v(vin) when v(vout)=0.6 fall=1
  meas tran vt_rise find v(vin) when v(vout)=0.6 rise=1
  let vth_val  = 0*time + vt_fall
  let vtl_val  = 0*time + vt_rise
  let vhys_val = vth_val - vtl_val
  write strig_tb.raw
end
end
quit 0
.endc
"}
C {lab_pin.sym} 120 -200 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {capa-2.sym} 320 -150 0 0 {name=C1
m=1
value=1p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 320 -120 0 0 {name=l4 lab=0}
C {strig.sym} 180 -170 0 0 {name=x1 WN1=\{WN12\} WN2=\{WN12\} WN3=\{WN3\} WP1='2*\{WN12\}' WP2='2*\{WN12\}' WP3='2*\{WN3\}'}
C {title.sym} 160 -30 0 0 {name=l5 author="Niklaus Leuenberger"}
C {launcher.sym} 500 -160 0 0 {name=h1
descr="load waves"
tclcommand="xschem raw_read $netlist_dir/strig_tb.raw tran"
}
C {launcher.sym} 500 -200 0 0 {name=h4
descr=simulate
tclcommand="
# run netlist and simulation
xschem netlist
simulate
"}
