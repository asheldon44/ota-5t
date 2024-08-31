v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Input Pair} 40 -220 0 0 0.4 0.4 {}
T {Load} 270 -220 0 0 0.4 0.4 {}
T {Second Stage} 390 -220 0 0 0.4 0.4 {}
T {Buffer} 560 -220 0 0 0.4 0.4 {}
N 220 -340 240 -340 {
lab=#net1}
N 400 -380 450 -380 {
lab=vout}
N 450 -380 450 -350 {
lab=vout}
N 450 -310 450 -280 {
lab=GND}
N 170 -340 170 -280 {
lab=GND}
N 170 -420 170 -400 {
lab=vin}
N 110 -340 110 -280 {
lab=GND}
N 170 -420 240 -420 {
lab=vin}
N 340 -510 340 -500 {
lab=VDD}
N 110 -510 300 -510 {
lab=VDD}
N 300 -510 300 -440 {
lab=VDD}
N 110 -510 110 -400 {
lab=VDD}
N 300 -510 340 -510 {
lab=VDD}
N 220 -270 260 -270 {
lab=#net1}
N 360 -270 400 -270 {
lab=vout}
N 390 -380 400 -380 {
lab=vout}
N 300 -320 300 -310 {
lab=GND}
N 220 -340 220 -270 {
lab=#net1}
N 400 -380 400 -270 {
lab=vout}
C {/foss/designs/ota_5t/ota-5t.sym} 310 -380 0 0 {name=x1}
C {/foss/designs/ota_5t/loopgainprobe.sym} 330 -270 0 0 {name=x999}
C {devices/capa.sym} 450 -320 0 0 {name=C1
m=1
value=500f}
C {devices/gnd.sym} 450 -280 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 300 -310 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} 170 -370 0 0 {name=Vin value="dc 0.6 ac \{noisemag\}" savecurrent=false}
C {devices/gnd.sym} 170 -280 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} 110 -370 0 0 {name=Vsup value=1.2 savecurrent=false}
C {devices/gnd.sym} 110 -280 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 510 -500 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
 .lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 640 -430 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false
value="
.param temp=27
.param noisemag=0
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
	alterparam noisemag=1
        alter i.X999.ii acmag=0
        alter v.X999.vi acmag=0
	noise v(vout) vin dec 100 0.01 100e9
.endc
"}
C {devices/isource.sym} 340 -470 0 0 {name=I0 value=5u}
C {devices/lab_wire.sym} 440 -380 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 210 -420 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 290 -510 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/ngspice_get_value.sym} 20 -160 0 0 {name=r1 node=@n.x1.xm1a.nsg13_lv_nmos[gm]
descr="gm[m1a]="}
C {devices/launcher.sym} 240 -240 0 0 {name=h1
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
C {devices/ngspice_get_value.sym} 220 -160 0 0 {name=r9 node=@n.x1.xm2a.nsg13_lv_pmos[gm]
descr="gm[m2a]="}
C {devices/ngspice_get_value.sym} 220 -130 0 0 {name=r10 node=@n.x1.xm2a.nsg13_lv_pmos[gds]
descr="gds[m2a]="}
C {devices/ngspice_get_value.sym} 220 -100 0 0 {name=r11 node=i(@n.x1.xm2a.nsg13_lv_pmos[ids])
descr="ids[m2a]="}
C {devices/ngspice_get_value.sym} 220 -70 0 0 {name=r12 node=@n.x1.xm2a.nsg13_lv_pmos[cgg]
descr="cgg[m2a]="}
C {devices/ngspice_get_value.sym} 300 -160 0 0 {name=r13 node=@n.x1.xm2b.nsg13_lv_pmos[gm]
descr="gm[m2b]="}
C {devices/ngspice_get_value.sym} 300 -130 0 0 {name=r14 node=@n.x1.xm2b.nsg13_lv_pmos[gds]
descr="gds[m2b]="}
C {devices/ngspice_get_value.sym} 300 -100 0 0 {name=r15 node=i(@n.x1.xm2b.nsg13_lv_pmos[ids])
descr="ids[m2b]="}
C {devices/ngspice_get_value.sym} 300 -70 0 0 {name=r16 node=@n.x1.xm2b.nsg13_lv_pmos[cgg]
descr="cgg[m2b]="}
C {devices/ngspice_get_expr.sym} 20 -30 0 0 {name=r17 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1a.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm1a.nsg13_lv_nmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m1a\\\\]="}
C {devices/ngspice_get_expr.sym} 100 -30 0 0 {name=r18 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm1b.nsg13_lv_nmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m1b\\\\]="}
C {devices/ngspice_get_expr.sym} 220 -30 0 0 {name=r19 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm2a.nsg13_lv_pmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m2a\\\\]="}
C {devices/ngspice_get_expr.sym} 300 -30 0 0 {name=r20 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm2b.nsg13_lv_pmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m2b\\\\]="}
C {devices/ngspice_get_expr.sym} 20 0 0 0 {name=r21 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1a.nsg13_lv_nmos\\\\[gm\\\\]]/2/3.14159/[ngspice::get_node @n.x1.xm1a.nsg13_lv_nmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m1a\\\\]="}
C {devices/ngspice_get_expr.sym} 100 0 0 0 {name=r22 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[gm\\\\]]/2/3.14159/[ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m1b\\\\]="}
C {devices/ngspice_get_expr.sym} 220 0 0 0 {name=r23 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[gm\\\\]]/2/3.14159/[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m2a\\\\]="}
C {devices/ngspice_get_expr.sym} 300 0 0 0 {name=r24 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[gm\\\\]]/2/3.14159/[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m2b\\\\]="}
C {devices/ngspice_get_value.sym} 420 -160 0 0 {name=r25 node=@n.x1.xm2c.nsg13_lv_pmos[gm]
descr="gm[m2c]="}
C {devices/ngspice_get_value.sym} 420 -130 0 0 {name=r26 node=@n.x1.xm2c.nsg13_lv_pmos[gds]
descr="gds[m2c]="}
C {devices/ngspice_get_value.sym} 420 -100 0 0 {name=r27 node=i(@n.x1.xm2c.nsg13_lv_pmos[ids])
descr="ids[m2c]="}
C {devices/ngspice_get_value.sym} 420 -70 0 0 {name=r28 node=@n.x1.xm2c.nsg13_lv_pmos[cgg]
descr="cgg[m2c]="}
C {devices/ngspice_get_expr.sym} 420 -30 0 0 {name=r29 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2c.nsg13_lv_pmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm2b.nsg13_lv_pmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m2c\\\\]="}
C {devices/ngspice_get_expr.sym} 420 0 0 0 {name=r30 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2c.nsg13_lv_pmos\\\\[gm\\\\]]/2/3.14159/[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m2c\\\\]="}
C {devices/ngspice_get_expr.sym} 560 -380 0 0 {name=r31 node="[to_eng [expr \{([ngspice::get_node @n.x1.xm1b.nsg13_lv_nmos\\\\[gds\\\\]]+[ngspice::get_node @n.x1.xm2b.nsg13_lv_pmos\\\\[gds\\\\]])/2/3.14159/[ngspice::get_node @n.x1.xm2c.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_p1="}
C {devices/ngspice_get_expr.sym} 560 -340 0 0 {name=r32 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[gm\\\\]]/2/3.14159/2/[ngspice::get_node @n.x1.xm2a.nsg13_lv_pmos\\\\[cgg\\\\]]\}]]"
descr="f_p2="}
C {devices/ngspice_get_value.sym} 560 -160 0 0 {name=r34 node=@n.x1.xm2d.nsg13_lv_nmos[gm]
descr="gm[m2d]="}
C {devices/ngspice_get_value.sym} 560 -130 0 0 {name=r35 node=@n.x1.xm2d.nsg13_lv_nmos[gds]
descr="gds[m2d]="}
C {devices/ngspice_get_value.sym} 560 -100 0 0 {name=r36 node=i(@n.x1.xm2d.nsg13_lv_nmos[ids])
descr="ids[m2d]="}
C {devices/ngspice_get_value.sym} 560 -70 0 0 {name=r37 node=@n.x1.xm2d.nsg13_lv_nmos[cgg]
descr="cgg[m2d]="}
C {devices/ngspice_get_expr.sym} 560 -30 0 0 {name=r38 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2d.nsg13_lv_nmos\\\\[gm\\\\]]/[ngspice::get_node i(@n.x1.xm2d.nsg13_lv_nmos\\\\[ids\\\\])]\}]]"
descr="gm/id\\\\[m2d\\\\]="}
C {devices/ngspice_get_expr.sym} 560 0 0 0 {name=r39 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2d.nsg13_lv_nmos\\\\[gm\\\\]]/2/3.14159/[ngspice::get_node @n.x1.xm2d.nsg13_lv_nmos\\\\[cgg\\\\]]\}]]"
descr="f_T\\\\[m2d\\\\]="}
C {devices/ngspice_get_expr.sym} 560 -300 0 0 {name=r40 node="[to_eng [expr \{[ngspice::get_node @n.x1.xm2d.nsg13_lv_nmos\\\\[gm\\\\]]/2/3.14159/100e-15\}]]"
descr="f_p3="}
