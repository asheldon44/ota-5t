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
N -390 -460 -180 -460 {
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
lab=Vout}
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
N -540 -220 -540 -170 {
lab=Ib}
N -580 -170 -540 -170 {
lab=Ib}
N -620 -220 -540 -220 {
lab=Ib}
N -620 -220 -620 -200 {
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
lab=Vn}
N -440 -280 -430 -280 {
lab=Vp}
N -620 -260 -620 -220 {
lab=Ib}
N -180 -350 -130 -350 {
lab=Vout}
N -180 -380 -180 -350 {
lab=Vout}
C {sg13g2_pr/sg13_lv_nmos.sym} -410 -280 2 1 {name=m1a
l=4u
w=10u
ng=1
m=4
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -200 -410 0 0 {name=m2b
l=1u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -370 -410 0 1 {name=m2a
l=1u
w=2u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/lab_wire.sym} -180 -220 0 0 {name=p2 sig_type=std_logic lab=vs}
C {devices/lab_wire.sym} -290 -360 0 0 {name=p4 sig_type=std_logic lab=vd}
C {devices/iopin.sym} -420 -460 0 1 {name=p5 lab=VDD}
C {devices/ipin.sym} -440 -280 0 0 {name=p6 lab=Vp}
C {devices/opin.sym} -130 -350 0 0 {name=p7 lab=Vout}
C {devices/ipin.sym} -130 -280 0 1 {name=p8 lab=Vn}
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
C {sg13g2_pr/sg13_lv_nmos.sym} -600 -170 2 0 {name=m3b
l=1u
w=1u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X}
C {devices/ipin.sym} -620 -260 1 0 {name=p10 lab=Ib}
