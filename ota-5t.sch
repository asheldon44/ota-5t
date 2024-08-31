v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -390 -250 -390 -220 {
lab=vs}
N -180 -250 -180 -220 {
lab=vs}
N -290 -220 -180 -220 {
lab=vs}
N -290 -220 -290 -200 {
lab=vs}
N -280 -280 -180 -280 {
lab=VSS}
N -390 -280 -280 -280 {
lab=VSS}
N -390 -360 -390 -310 {
lab=vd}
N -290 -410 -220 -410 {
lab=vd}
N -290 -410 -290 -360 {
lab=vd}
N -350 -410 -290 -410 {
lab=vd}
N -390 -360 -290 -360 {
lab=vd}
N -390 -380 -390 -360 {
lab=vd}
N -390 -460 -390 -440 {
lab=VDD}
N -180 -460 -180 -440 {
lab=VDD}
N -400 -460 -390 -460 {
lab=VDD}
N -180 -410 -170 -410 {
lab=VDD}
N -170 -460 -170 -410 {
lab=VDD}
N -180 -460 -170 -460 {
lab=VDD}
N -400 -410 -390 -410 {
lab=VDD}
N -400 -460 -400 -410 {
lab=VDD}
N -390 -220 -290 -220 {
lab=vs}
N -180 -350 -180 -310 {
lab=vint}
N -420 -460 -400 -460 {
lab=VDD}
N -290 -140 -290 -110 {
lab=VSS}
N -620 -140 -620 -110 {
lab=VSS}
N -630 -110 -620 -110 {
lab=VSS}
N -620 -110 -290 -110 {
lab=VSS}
N -540 -170 -330 -170 {
lab=Ib}
N -540 -210 -540 -170 {
lab=Ib}
N -580 -170 -540 -170 {
lab=Ib}
N -620 -210 -540 -210 {
lab=Ib}
N -620 -210 -620 -200 {
lab=Ib}
N -630 -170 -620 -170 {
lab=VSS}
N -630 -170 -630 -110 {
lab=VSS}
N -660 -110 -630 -110 {
lab=VSS}
N -290 -170 -280 -170 {
lab=VSS}
N -280 -170 -280 -110 {
lab=VSS}
N -290 -110 -280 -110 {
lab=VSS}
N -280 -280 -280 -170 {
lab=VSS}
N -140 -280 -130 -280 {
lab=Vp}
N -440 -280 -430 -280 {
lab=Vn}
N -620 -260 -620 -210 {
lab=Ib}
N -180 -350 -90 -350 {
lab=vint}
N -180 -380 -180 -350 {
lab=vint}
N 20 -140 20 -110 {
lab=VSS}
N 20 -170 30 -170 {
lab=VSS}
N 30 -170 30 -110 {
lab=VSS}
N 20 -110 30 -110 {
lab=VSS}
N -60 -170 -20 -170 {
lab=Ib}
N -60 -210 -60 -170 {
lab=Ib}
N -540 -210 -60 -210 {
lab=Ib}
N -90 -410 -20 -410 {
lab=vint}
N -170 -460 20 -460 {
lab=VDD}
N 20 -460 20 -440 {
lab=VDD}
N 20 -410 30 -410 {
lab=VDD}
N 30 -460 30 -410 {
lab=VDD}
N 20 -460 30 -460 {
lab=VDD}
N -390 -460 -180 -460 {
lab=VDD}
N -90 -410 -90 -350 {
lab=vint}
N 30 -110 240 -110 {
lab=VSS}
N 20 -340 200 -340 {
lab=vint2}
N 20 -340 20 -200 {
lab=vint2}
N 30 -460 240 -460 {
lab=VDD}
N 20 -350 20 -340 {
lab=vint2}
N 240 -340 250 -340 {
lab=Vout}
N 240 -460 240 -370 {
lab=VDD}
N 250 -280 370 -280 {
lab=Vout}
N 240 -140 240 -110 {
lab=VSS}
N 240 -170 250 -170 {
lab=VSS}
N 250 -170 250 -110 {
lab=VSS}
N 240 -110 250 -110 {
lab=VSS}
N 240 -280 240 -200 {
lab=Vout}
N -280 -110 20 -110 {
lab=VSS}
N 240 -310 240 -280 {
lab=Vout}
N 250 -340 250 -280 {
lab=Vout}
N 240 -280 250 -280 {
lab=Vout}
N -60 -210 180 -210 {
lab=Ib}
N 180 -210 180 -170 {
lab=Ib}
N 180 -170 200 -170 {
lab=Ib}
N -90 -350 -60 -350 {
lab=vint}
N 0 -350 20 -350 {
lab=vint2}
N 20 -380 20 -350 {
lab=vint2}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 -280 2 1 {name=m1a
l=4u
w=10u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -200 -410 0 0 {name=m2b
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -370 -410 0 1 {name=m2a
l=2u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -180 -220 0 0 {name=p2 sig_type=std_logic lab=vs}
C {devices/lab_wire.sym} -290 -360 0 0 {name=p4 sig_type=std_logic lab=vd}
C {devices/iopin.sym} -420 -460 0 1 {name=p5 lab=VDD}
C {devices/ipin.sym} -440 -280 0 0 {name=p6 lab=Vn}
C {devices/opin.sym} 370 -280 0 0 {name=p7 lab=Vout}
C {devices/ipin.sym} -130 -280 0 1 {name=p8 lab=Vp}
C {sg13g2_pr/sg13_lv_nmos.sym} -310 -170 2 1 {name=m3a
l=1u
w=1u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/iopin.sym} -660 -110 0 1 {name=p9 lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -160 -280 2 0 {name=m1b
l=4u
w=10u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X}
C {sg13g2_pr/sg13_lv_nmos.sym} -600 -170 2 0 {name=m3ref
l=1u
w=1u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X}
C {devices/ipin.sym} -620 -260 1 0 {name=p10 lab=Ib}
C {sg13g2_pr/sg13_lv_nmos.sym} 0 -170 2 1 {name=m3b
l=1u
w=1u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 0 -410 0 0 {name=m2c
l=1u
w=4u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -90 -350 0 0 {name=p1 sig_type=std_logic lab=vint}
C {devices/lab_wire.sym} 80 -340 0 0 {name=p3 sig_type=std_logic lab=vint2}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 -340 2 1 {name=m2d
l=1u
w=1u
ng=1
m=32
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 -170 2 1 {name=m3c
l=1u
w=1u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/capa.sym} -30 -350 1 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
