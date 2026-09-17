v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -60 130 -40 {lab=C}
N 130 -150 130 -100 {lab=VSS}
N 130 -400 130 -380 {lab=!C}
N 130 -340 130 -290 {lab=VDD}
N 80 -340 100 -340 {lab=Vin}
N 80 -220 80 -100 {lab=Vin}
N 80 -100 100 -100 {lab=Vin}
N 60 -220 80 -220 {lab=Vin}
N 80 -340 80 -220 {lab=Vin}
N 160 -340 180 -340 {lab=Vout}
N 180 -220 180 -100 {lab=Vout}
N 160 -100 180 -100 {lab=Vout}
N 180 -220 200 -220 {lab=Vout}
N 180 -340 180 -220 {lab=Vout}
C {sg13g2_pr/sg13_lv_nmos.sym} 130 -80 3 0 {name=M1
l=0.13u
w=0.15u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 130 -360 1 0 {name=M2
l=0.13u
w=0.3u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 130 -150 3 0 {name=p4 lab=VSS}
C {iopin.sym} 130 -290 1 0 {name=p1 lab=VDD}
C {iopin.sym} 200 -220 0 0 {name=p2 lab=Vout}
C {iopin.sym} 60 -220 2 0 {name=p3 lab=Vin}
C {ipin.sym} 130 -40 3 0 {name=p5 lab=C}
C {ipin.sym} 130 -400 1 0 {name=p6 lab=!C}
