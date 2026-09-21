v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -260 70 -260 {lab=b0}
N 60 -240 70 -240 {lab=b1}
N 60 -220 70 -220 {lab=b2}
N 60 -200 70 -200 {lab=b3}
N 60 -180 70 -180 {lab=b4}
N 60 -160 70 -160 {lab=b5}
N 60 -140 70 -140 {lab=b6}
N 60 -120 70 -120 {lab=b7}
N 280 -190 280 -90 {lab=Vanalog}
N 360 -90 380 -90 {lab=T1}
N 520 -90 540 -90 {lab=T2}
N 280 -190 440 -190 {lab=Vanalog}
N 440 -190 440 -90 {lab=Vanalog}
N 130 -80 130 -60 {lab=VSS}
N 680 -90 700 -90 {lab=T3}
N 440 -190 600 -190 {lab=Vanalog}
N 600 -190 600 -90 {lab=Vanalog}
N 840 -90 860 -90 {lab=T4}
N 760 -190 760 -90 {lab=Vanalog}
N 600 -190 760 -190 {lab=Vanalog}
N 240 -190 280 -190 {lab=Vanalog}
N 290 -400 310 -400 {lab=T1_out}
N 560 -400 580 -400 {lab=T2_out}
N 830 -400 850 -400 {lab=T3_out}
C {ipin.sym} 60 -260 0 0 {name=p2 lab=b0}
C {ipin.sym} 60 -240 0 0 {name=p3 lab=b1}
C {ipin.sym} 60 -220 0 0 {name=p5 lab=b2}
C {ipin.sym} 60 -200 0 0 {name=p6 lab=b3}
C {ipin.sym} 60 -180 0 0 {name=p7 lab=b4}
C {ipin.sym} 60 -160 0 0 {name=p8 lab=b5}
C {ipin.sym} 60 -140 0 0 {name=p9 lab=b6}
C {ipin.sym} 60 -120 0 0 {name=p10 lab=b7}
C {iopin.sym} 80 -510 2 0 {name=p1 lab=VSS}
C {iopin.sym} 80 -530 2 0 {name=p4 lab=VDD}
C {lab_pin.sym} 260 -190 1 0 {name=p11 sig_type=std_logic lab=Vanalog}
C {opin.sym} 380 -90 0 0 {name=p13 lab=T1}
C {opin.sym} 540 -90 0 0 {name=p14 lab=T2}
C {opin.sym} 700 -90 0 0 {name=p25 lab=T3}
C {opin.sym} 860 -90 0 0 {name=p28 lab=T4}
C {strig.sym} 280 -60 0 0 {name=x2 WN1=.6u WN2=.6u WN3=.6u WP1=.6u WP2=.6u WP3=.6u}
C {r2r.sym} 70 -80 0 0 {name=x1}
C {strig.sym} 440 -60 0 0 {name=x3 WN1=1.2u WN2=1.2u WN3=.6u WP1=1.2u WP2=1.2u WP3=.6u}
C {strig.sym} 600 -60 0 0 {name=x4 WN1=2.4u WN2=2.4u WN3=.6u WP1=2.4u WP2=2.4u WP3=.6u}
C {strig.sym} 760 -60 0 0 {name=x5 WN1=4.8u WN2=4.8u WN3=.6u WP1=4.8u WP2=4.8u WP3=.6u}
C {opin.sym} 310 -400 0 0 {name=p12 lab=T1_out}
C {strig.sym} 210 -370 0 0 {name=x6 WN1=.6u WN2=.6u WN3=.6u WP1=.6u WP2=.6u WP3=.6u}
C {ipin.sym} 210 -400 0 0 {name=p22 lab=T1_in}
C {opin.sym} 580 -400 0 0 {name=p23 lab=T2_out}
C {strig.sym} 480 -370 0 0 {name=x7 WN1=.6u WN2=.6u WN3=.6u WP1=.6u WP2=.6u WP3=.6u}
C {ipin.sym} 480 -400 0 0 {name=p32 lab=T2_in}
C {opin.sym} 850 -400 0 0 {name=p33 lab=T3_out}
C {strig.sym} 750 -370 0 0 {name=x8 WN1=.6u WN2=.6u WN3=.6u WP1=.6u WP2=.6u WP3=.6u}
C {ipin.sym} 750 -400 0 0 {name=p36 lab=T3_in}
C {lab_pin.sym} 320 -120 1 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -120 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 640 -120 1 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 800 -120 1 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 250 -430 1 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 520 -430 1 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 790 -430 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 130 -70 3 0 {name=p24 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -60 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -60 3 0 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 640 -60 3 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -60 3 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 250 -370 3 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 520 -370 3 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -370 3 0 {name=p35 sig_type=std_logic lab=VSS}
C {opin.sym} 1040 -500 0 0 {name=p37 lab=oe0}
C {opin.sym} 1040 -480 0 0 {name=p38 lab=oe1}
C {opin.sym} 1040 -460 0 0 {name=p39 lab=oe2}
C {opin.sym} 1040 -440 0 0 {name=p40 lab=oe3}
C {opin.sym} 1040 -420 0 0 {name=p41 lab=oe4}
C {opin.sym} 1040 -400 0 0 {name=p42 lab=oe5}
C {opin.sym} 1040 -380 0 0 {name=p43 lab=oe6}
C {opin.sym} 1040 -360 0 0 {name=p44 lab=oe7}
C {lab_pin.sym} 1040 -360 0 0 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -400 0 0 {name=p46 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -440 0 0 {name=p47 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -380 0 0 {name=p48 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -420 0 0 {name=p49 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1040 -460 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {ipin.sym} 80 -460 0 0 {name=p51 lab=uio_in0}
C {ipin.sym} 80 -440 0 0 {name=p52 lab=uio_in1}
C {ipin.sym} 80 -400 0 0 {name=p54 lab=uio_in3}
C {ipin.sym} 80 -360 0 0 {name=p56 lab=uio_in5}
C {ipin.sym} 80 -320 0 0 {name=p58 lab=uio_in7}
C {opin.sym} 1040 -310 0 0 {name=p53 lab=o4}
C {opin.sym} 1040 -290 0 0 {name=p55 lab=o5}
C {opin.sym} 1040 -270 0 0 {name=p57 lab=o6}
C {opin.sym} 1040 -250 0 0 {name=p59 lab=o7}
C {opin.sym} 1040 -200 0 0 {name=p60 lab=uio_out0}
C {opin.sym} 1040 -180 0 0 {name=p61 lab=uio_out1}
C {opin.sym} 1040 -160 0 0 {name=p62 lab=uio_out2}
C {opin.sym} 1040 -140 0 0 {name=p63 lab=uio_out4}
C {opin.sym} 1040 -120 0 0 {name=p64 lab=uio_out6}
