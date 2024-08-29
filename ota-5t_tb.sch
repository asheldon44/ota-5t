v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Input Pair} 40 -220 0 0 0.4 0.4 {}
T {Load} 340 -220 0 0 0.4 0.4 {}
N 140 -340 160 -340 {
lab=#net1}
N 320 -380 370 -380 {
lab=vout}
N 370 -380 370 -350 {
lab=vout}
N 370 -310 370 -280 {
lab=GND}
N 90 -340 90 -280 {
lab=GND}
N 90 -420 90 -400 {
lab=vin}
N 30 -340 30 -280 {
lab=GND}
N 90 -420 160 -420 {
lab=vin}
N 260 -510 260 -500 {
lab=VDD}
N 30 -510 220 -510 {
lab=VDD}
N 220 -510 220 -440 {
lab=VDD}
N 30 -510 30 -400 {
lab=VDD}
N 220 -510 260 -510 {
lab=VDD}
N 140 -270 180 -270 {
lab=#net1}
N 280 -270 320 -270 {
lab=vout}
N 310 -380 320 -380 {
lab=vout}
N 220 -320 220 -310 {
lab=GND}
N 140 -340 140 -270 {
lab=#net1}
N 320 -380 320 -270 {
lab=vout}
C {/foss/designs/ota_5t/ota-5t.sym} 230 -380 0 0 {name=x1}
C {/foss/designs/ota_5t/loopgainprobe.sym} 250 -270 0 0 {name=x999}
C {devices/capa.sym} 370 -320 0 0 {name=C1
m=1
value=500f}
C {devices/gnd.sym} 370 -280 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 220 -310 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 90 -370 0 0 {name=Vin value=0.6 savecurrent=false}
C {devices/gnd.sym} 90 -280 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 30 -370 0 0 {name=Vsup value=1.2 savecurrent=false}
C {devices/gnd.sym} 30 -280 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 410 -510 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
 .lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 520 -440 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false
value="
.param temp=27
.include /foss/designs/ota_5t/tb_ota_5t_save.spice
.option savecurrents
.control
        save all
	remzerovec
        op
        write ota-5t_tb.raw
        dc Vin 0 1.2 0.05
        plot v(vout) v(vin)
        plot v(vout)-v(vin)
        alter Vin 0.6
        ac dec 100 0.01 100e9
        alter i.X999.ii acmag=1
        alter v.X999.vi acmag=1
        ac dec 100 0.01 100e9
        let tian_signal = tian_loop()
        plot db(tian_signal)
        let dbsignal = db(tian_signal)
        meas ac zerogainfreq when dbsignal=0
        plot 180*cph(tian_signal)/pi
        let tphase = 180*cph(tian_signal)/pi
        meas ac phaseatzerogain find tphase at=zerogainfreq
.endc
"}
C {devices/isource.sym} 260 -470 0 0 {name=I0 value=5u}
C {devices/lab_wire.sym} 360 -380 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 130 -420 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 210 -510 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/ngspice_get_value.sym} 20 -160 0 0 {name=r1 node=@n.x1.xm1a.nsg13_lv_nmos[gm]
descr="gm[m1a]="}
C {devices/launcher.sym} 170 -240 0 0 {name=h1
descr=Backannotate 
tclcommand="xschem annotate_op"}
C {devices/ngspice_get_value.sym} 20 -130 0 0 {name=r2 node=@n.x1.xm1a.nsg13_lv_nmos[gds]
descr="gds[m1a]="}
C {devices/ngspice_get_value.sym} 20 -100 0 0 {name=r3 node=i(@n.x1.xm1a.nsg13_lv_nmos[ids])
descr="ids[m1a]="}
C {devices/ngspice_get_value.sym} 20 -70 0 0 {name=r4 node=@n.x1.xm1a.nsg13_lv_nmos[cgg]
descr="cgg[m1a]="}
C {devices/ngspice_get_value.sym} 100 -160 0 0 {name=r5 node=@n.x1.xm1b.nsg13_lv_nmos[gm]
descr="gm[m1b]="}
C {devices/ngspice_get_value.sym} 100 -130 0 0 {name=r6 node=@n.x1.xm1b.nsg13_lv_nmos[gds]
descr="gds[m1b]="}
C {devices/ngspice_get_value.sym} 100 -100 0 0 {name=r7 node=i(@n.x1.xm1b.nsg13_lv_nmos[ids])
descr="ids[m1b]="}
C {devices/ngspice_get_value.sym} 100 -70 0 0 {name=r8 node=@n.x1.xm1b.nsg13_lv_nmos[cgg]
descr="cgg[m1b]="}
C {devices/ngspice_get_value.sym} 290 -160 0 0 {name=r9 node=@n.x1.xm2a.nsg13_lv_pmos[gm]
descr="gm[m2a]="}
C {devices/ngspice_get_value.sym} 290 -130 0 0 {name=r10 node=@n.x1.xm2a.nsg13_lv_pmos[gds]
descr="gds[m2a]="}
C {devices/ngspice_get_value.sym} 290 -100 0 0 {name=r11 node=i(@n.x1.xm2a.nsg13_lv_pmos[ids])
descr="ids[m2a]="}
C {devices/ngspice_get_value.sym} 290 -70 0 0 {name=r12 node=@n.x1.xm2a.nsg13_lv_pmos[cgg]
descr="cgg[m2a]="}
C {devices/ngspice_get_value.sym} 370 -160 0 0 {name=r13 node=@n.x1.xm2b.nsg13_lv_pmos[gm]
descr="gm[m2b]="}
C {devices/ngspice_get_value.sym} 370 -130 0 0 {name=r14 node=@n.x1.xm2b.nsg13_lv_pmos[gds]
descr="gds[m2b]="}
C {devices/ngspice_get_value.sym} 370 -100 0 0 {name=r15 node=i(@n.x1.xm2b.nsg13_lv_pmos[ids])
descr="ids[m2b]="}
C {devices/ngspice_get_value.sym} 370 -70 0 0 {name=r16 node=@n.x1.xm2b.nsg13_lv_pmos[cgg]
descr="cgg[m2b]="}
C {devices/ngspice_get_expr.sym} 20 -30 0 0 {name=r17 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1a.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm1a.nsg13_lv_nmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m1a\\\\]="}
C {devices/ngspice_get_expr.sym} 100 -30 0 0 {name=r18 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm1b.nsg13_lv_nmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m1b\\\\]="}
C {devices/ngspice_get_expr.sym} 290 -30 0 0 {name=r19 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm2a.nsg13_lv_pmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m2a\\\\]="}
C {devices/ngspice_get_expr.sym} 370 -30 0 0 {name=r20 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm2b.nsg13_lv_pmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m2b\\\\]="}
C {devices/ngspice_get_expr.sym} 20 0 0 0 {name=r21 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1a.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node @n.x1.xm1a.nsg13_lv_nmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m1a\\\\]="}
C {devices/ngspice_get_expr.sym} 100 0 0 0 {name=r22 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m1b\\\\]="}
C {devices/ngspice_get_expr.sym} 290 0 0 0 {name=r23 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m2a\\\\]="}
C {devices/ngspice_get_expr.sym} 370 0 0 0 {name=r24 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m2b\\\\]="}
