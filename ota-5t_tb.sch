v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 40 -80 140 {
lab=#net1}
N -80 40 -60 40 {
lab=#net1}
N 130 0 130 140 {
lab=vout}
N 90 -0 130 0 {
lab=vout}
N 190 0 190 10 {
lab=vout}
N 130 0 190 0 {
lab=vout}
N 190 70 190 100 {
lab=GND}
N 0 60 0 100 {
lab=GND}
N -180 40 -180 100 {
lab=GND}
N -180 -40 -180 -20 {
lab=vin}
N -240 40 -240 100 {
lab=GND}
N -180 -40 -60 -40 {
lab=vin}
N -110 -130 -110 -120 {
lab=VDD}
N -110 -130 0 -130 {
lab=VDD}
N -110 -60 -110 0 {
lab=#net2}
N -110 0 -60 0 {
lab=#net2}
N -240 -130 -110 -130 {
lab=VDD}
N 0 -130 0 -60 {
lab=VDD}
N -240 -130 -240 -20 {
lab=VDD}
N -80 140 20 140 {
lab=#net1}
N 120 140 130 140 {
lab=vout}
C {/foss/designs/ota_5t/ota-5t.sym} 10 0 0 0 {name=x1}
C {/foss/designs/ota_5t/loopgainprobe.sym} 90 140 0 0 {name=x999}
C {devices/capa.sym} 190 40 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 190 100 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 0 100 0 0 {name=l4 lab=GND}
C {devices/vsource.sym} -180 10 0 0 {name=Vin value=0.6 savecurrent=false}
C {devices/gnd.sym} -180 100 0 0 {name=l6 lab=GND}
C {devices/vsource.sym} -240 10 0 0 {name=Vsup value=1.2 savecurrent=false}
C {devices/gnd.sym} -240 100 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 300 -110 0 0 {name=SETUP
simulator=ngspice
only_toplevel=false
value="
 .lib /foss/pdks/sg13g2/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 300 -30 0 0 {name=CONTROL
simulator=ngspice
only_toplevel=false
value="
.param temp=27
.include /foss/designs/ota_5t/tb_ota_5t_save.spice
.control
        save all
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
C {devices/isource.sym} -110 -90 0 0 {name=I0 value=5u}
C {devices/lab_wire.sym} 170 0 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} -140 -40 0 0 {name=p2 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} -10 -130 0 0 {name=p3 sig_type=std_logic lab=VDD}
