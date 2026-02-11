v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 80 -60 100 -60 {
lab=vin}
N 80 60 100 60 {
lab=vin}
N 80 -60 80 60 {
lab=vin}
N 50 0 80 0 {
lab=vin}
N 140 -30 140 30 {
lab=#net1}
N 140 -100 140 -90 {
lab=VDD}
N 60 -100 140 -100 {
lab=VDD}
N 60 100 140 100 {
lab=VSS}
N 140 90 140 100 {
lab=VSS}
N 140 60 150 60 {
lab=VSS}
N 150 60 150 100 {
lab=VSS}
N 140 100 150 100 {
lab=VSS}
N 140 -60 150 -60 {
lab=VDD}
N 150 -100 150 -60 {
lab=VDD}
N 140 -100 150 -100 {
lab=VDD}
N 200 -60 220 -60 {
lab=#net1}
N 200 60 220 60 {
lab=#net1}
N 200 -60 200 60 {
lab=#net1}
N 170 0 200 0 {
lab=#net1}
N 260 -30 260 30 {
lab=vout}
N 260 -100 260 -90 {
lab=VDD}
N 180 -100 260 -100 {
lab=VDD}
N 180 100 260 100 {
lab=VSS}
N 260 90 260 100 {
lab=VSS}
N 260 60 270 60 {
lab=VSS}
N 270 60 270 100 {
lab=VSS}
N 260 100 270 100 {
lab=VSS}
N 260 -60 270 -60 {
lab=VDD}
N 270 -100 270 -60 {
lab=VDD}
N 260 -100 270 -100 {
lab=VDD}
N 150 100 180 100 {
lab=VSS}
N 140 0 170 0 {
lab=#net1}
N 150 -100 180 -100 {
lab=VDD}
N 260 0 300 0 {
lab=vout}
C {devices/iopin.sym} 60 -100 2 0 {name=p1 lab=VDD}
C {devices/iopin.sym} 60 100 2 0 {name=p2 lab=VSS}
C {devices/ipin.sym} 50 0 0 0 {name=p3 lab=vin}
C {devices/opin.sym} 300 0 0 0 {name=p4 lab=vout}
C {sky130_fd_pr/nfet_01v8.sym} 120 60 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 120 -60 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 240 60 0 0 {name=M3
L=0.15
W=20
nf=20 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 240 -60 0 0 {name=M4
L=0.15
W=20
nf=20
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
