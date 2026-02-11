v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 340 0 925 240 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="vin
vout
pin_out"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 340 260 925 500 {flags=graph
y1=-0.00071
y2=0.0015
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=i(vmeas)}
N 420 -160 460 -160 {
lab=vin}
N 500 -220 500 -200 {
lab=#net1}
N 540 -160 580 -160 {
lab=vout}
N 500 -120 500 -100 {
lab=VSS}
N 700 -160 760 -160 {
lab=pin_out}
N 340 -160 340 -140 {
lab=vin}
N 340 -160 420 -160 {
lab=vin}
N 720 -160 720 -140 {
lab=pin_out}
N 580 -160 640 -160 {
lab=vout}
N 500 -300 500 -280 {
lab=VDD}
N 485 -300 515 -300 {
lab=VDD}
C {devices/code.sym} -170 -160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -130 -15 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {double_inverter.sym} 480 -160 0 0 {name=x1}
C {devices/vsource.sym} 80 -170 0 0 {name=V1 value=1.8 savecurrent=false
lab=VDD}
C {devices/vsource.sym} 160 -165 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} 80 -200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 80 -140 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 160 -135 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 160 -195 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 420 -160 0 0 {name=p3 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 500 -100 2 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -300 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 580 -160 0 0 {name=p6 sig_type=std_logic lab=vout}
C {devices/res.sym} 670 -160 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 720 -110 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 720 -80 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 760 -160 0 0 {name=p7 sig_type=std_logic lab=pin_out}
C {devices/simulator_commands_shown.sym} 75 -20 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options savecurrents
.control
save all
tran 100p 200n
write testbench.raw
.endc
"}
C {devices/sqwsource.sym} 340 -110 0 0 {name=V3 vhi=1.8 freq=10e6}
C {devices/gnd.sym} 340 -80 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 500 -250 0 0 {name=Vmeas}
