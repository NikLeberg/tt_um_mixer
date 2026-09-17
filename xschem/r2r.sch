v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 20 -240 20 -140 {lab=#net1}
N 20 -240 40 -240 {lab=#net1}
N 20 -300 20 -240 {lab=#net1}
N 20 -380 20 -360 {lab=b0}
N 20 -80 20 -60 {lab=VSS}
N 160 -380 160 -360 {lab=b1}
N 160 -300 160 -240 {lab=#net2}
N 100 -240 160 -240 {lab=#net2}
N 160 -240 180 -240 {lab=#net2}
N 300 -300 300 -240 {lab=#net3}
N 240 -240 300 -240 {lab=#net3}
N 300 -240 320 -240 {lab=#net3}
N 440 -300 440 -240 {lab=#net4}
N 380 -240 440 -240 {lab=#net4}
N 440 -240 460 -240 {lab=#net4}
N 580 -300 580 -240 {lab=#net5}
N 520 -240 580 -240 {lab=#net5}
N 580 -240 600 -240 {lab=#net5}
N 720 -300 720 -240 {lab=#net6}
N 660 -240 720 -240 {lab=#net6}
N 720 -240 740 -240 {lab=#net6}
N 860 -300 860 -240 {lab=#net7}
N 800 -240 860 -240 {lab=#net7}
N 860 -240 880 -240 {lab=#net7}
N 1000 -300 1000 -240 {lab=#net8}
N 940 -240 1000 -240 {lab=#net8}
N 1000 -240 1020 -240 {lab=#net8}
N 1000 -380 1000 -360 {lab=b7}
N 860 -380 860 -360 {lab=b6}
N 720 -380 720 -360 {lab=b5}
N 580 -380 580 -360 {lab=b4}
N 1080 -240 1100 -240 {lab=V}
N 300 -380 300 -360 {lab=b2}
N 440 -380 440 -360 {lab=b3}
C {iopin.sym} 20 -60 1 0 {name=p4 lab=VSS}
C {ipin.sym} 20 -380 1 0 {name=p2 lab=b0}
C {ipin.sym} 160 -380 1 0 {name=p3 lab=b1}
C {ipin.sym} 300 -380 1 0 {name=p5 lab=b2}
C {ipin.sym} 440 -380 1 0 {name=p6 lab=b3}
C {ipin.sym} 580 -380 1 0 {name=p7 lab=b4}
C {ipin.sym} 720 -380 1 0 {name=p8 lab=b5}
C {ipin.sym} 860 -380 1 0 {name=p9 lab=b6}
C {ipin.sym} 1000 -380 1 0 {name=p10 lab=b7}
C {opin.sym} 1100 -240 0 0 {name=p1 lab=V}
C {sg13g2_pr/rsil.sym} 20 -110 0 0 {name=R1
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 20 -330 0 0 {name=R2
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 70 -240 1 0 {name=R3
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 160 -330 0 0 {name=R4
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 210 -240 1 0 {name=R5
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 300 -330 0 0 {name=R6
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 350 -240 1 0 {name=R7
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 440 -330 0 0 {name=R8
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 490 -240 1 0 {name=R9
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 580 -330 0 0 {name=R10
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 630 -240 1 0 {name=R11
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 720 -330 0 0 {name=R12
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 770 -240 1 0 {name=R13
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 860 -330 0 0 {name=R14
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 910 -240 1 0 {name=R15
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 1000 -330 0 0 {name=R16
w=.5u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
C {sg13g2_pr/rsil.sym} 1050 -240 1 0 {name=R17
w=1u
l=.5u
model=rsil
body=sub!
spiceprefix=X
 m=1
  mm_ok=1
value="expr_eng(  ( 9.0e-6 / @w + 7.0 * ( @l ) / ( @w + 1.0e-8 ) ) / @m  )"
}
