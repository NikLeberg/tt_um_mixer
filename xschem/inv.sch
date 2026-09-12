v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 140 -310 {}
N 140 -180 140 -150 {lab=Y}
N 80 -240 100 -240 {lab=A}
N 80 -120 100 -120 {lab=A}
N 80 -180 80 -120 {lab=A}
N 40 -180 80 -180 {lab=A}
N 80 -240 80 -180 {lab=A}
N 140 -180 180 -180 {lab=Y}
N 140 -210 140 -180 {lab=Y}
N 140 -120 180 -120 {lab=VN}
N 180 -120 180 -80 {lab=VN}
N 140 -80 140 -60 {lab=VN}
N 140 -80 180 -80 {lab=VN}
N 140 -90 140 -80 {lab=VN}
N 140 -240 180 -240 {lab=VP}
N 180 -280 180 -240 {lab=VP}
N 140 -280 180 -280 {lab=VP}
N 140 -280 140 -270 {lab=VP}
N 140 -300 140 -280 {lab=VP}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -120 0 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -240 0 0 {name=M2
l=0.13u
w=1u
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {ipin.sym} 40 -180 0 0 {name=p1 lab=A}
C {opin.sym} 180 -180 0 0 {name=p2 lab=Y}
C {iopin.sym} 140 -300 3 0 {name=p3 lab=VP}
C {iopin.sym} 140 -60 1 0 {name=p4 lab=VN}
