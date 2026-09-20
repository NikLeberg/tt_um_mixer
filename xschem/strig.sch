v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
P 4 1 310 -410 {}
N 140 -180 140 -150 {lab=#net1}
N 140 -300 140 -270 {lab=Y}
N 140 -420 140 -390 {lab=#net2}
N 140 -80 140 -60 {lab=VSS}
N 140 -120 180 -120 {lab=VSS}
N 180 -120 180 -80 {lab=VSS}
N 140 -80 180 -80 {lab=VSS}
N 140 -90 140 -80 {lab=VSS}
N 180 -240 180 -120 {lab=VSS}
N 140 -240 180 -240 {lab=VSS}
N 140 -210 140 -180 {lab=#net1}
N 310 -180 310 -120 {lab=VSS}
N 310 -300 420 -300 {lab=Y}
N 140 -330 140 -300 {lab=Y}
N 310 -380 310 -300 {lab=Y}
N 140 -300 310 -300 {lab=Y}
N 310 -300 310 -220 {lab=Y}
N 140 -450 140 -420 {lab=#net2}
N 310 -480 310 -420 {lab=VDD}
N 180 -520 180 -480 {lab=VDD}
N 140 -480 180 -480 {lab=VDD}
N 140 -520 180 -520 {lab=VDD}
N 140 -520 140 -510 {lab=VDD}
N 140 -540 140 -520 {lab=VDD}
N 80 -480 100 -480 {lab=A}
N 80 -240 80 -120 {lab=A}
N 80 -120 100 -120 {lab=A}
N 80 -240 100 -240 {lab=A}
N 80 -300 80 -240 {lab=A}
N 80 -360 100 -360 {lab=A}
N 80 -480 80 -360 {lab=A}
N 340 -420 380 -420 {lab=VSS}
N 380 -420 380 -80 {lab=VSS}
N 180 -80 380 -80 {lab=VSS}
N 340 -180 360 -180 {lab=VDD}
N 360 -520 360 -180 {lab=VDD}
N 180 -520 360 -520 {lab=VDD}
N 40 -300 80 -300 {lab=A}
N 80 -360 80 -300 {lab=A}
N 140 -360 180 -360 {lab=VDD}
N 180 -480 180 -360 {lab=VDD}
N 140 -420 280 -420 {lab=#net2}
N 140 -180 280 -180 {lab=#net1}
N 180 -480 310 -480 {lab=VDD}
N 180 -120 310 -120 {lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -120 0 0 {name=M1
l=0.13u
w=\{WN1\}
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -240 0 0 {name=M2
l=0.13u
w=\{WN2\}
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 310 -200 1 0 {name=M3
l=0.13u
w=\{WN3\}
ng=1
m=1
mm_ok=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 310 -400 3 0 {name=M6
l=0.13u
w=\{WP3\}
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -360 0 0 {name=M5
l=0.13u
w=\{WP2\}
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 120 -480 0 0 {name=M4
l=0.13u
w=\{WP1\}
ng=1
m=1
mm_ok=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 140 -540 3 0 {name=p3 lab=VDD}
C {iopin.sym} 140 -60 1 0 {name=p4 lab=VSS}
C {ipin.sym} 40 -300 0 0 {name=p1 lab=A}
C {opin.sym} 420 -300 0 0 {name=p2 lab=Y}
