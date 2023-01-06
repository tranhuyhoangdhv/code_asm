; ------------- READS51 generated header -------------- 
; module  : E:\DAI HOC VINH\hoc_ki_5\dien_tu_so_va_vi_xu_ly\giai_bai_tap_cuoi_ki\8051_nut_nhan_P1\bam_phim_sang_dan_va_bam_phim_tat_dan.asm
; created : 20:58:09, Thursday, January 05, 2023
; ----------------------------------------------------- 
#include <sfr51.inc>
org 00h
D1 bit P1.0
D2 bit P1.1
D3 bit P1.2
D4 bit P1.3
D5 bit P1.4
D6 bit P1.5
D7 bit P1.6
D8 bit P1.7
bt bit P3.2
main:
jb bt,$
lcall lap1
jb bt,$
lcall lap2
sjmp main
lap1:
lcall delay
lcall turn
clr D1
lcall delay
lcall turn
clr D2
lcall delay
lcall turn
clr D3
lcall delay
lcall turn
clr D4
lcall delay
lcall turn
clr D5

	lcall delay
lcall turn
clr D6
lcall delay
lcall turn
clr D7
lcall delay
lcall turn
clr D8
ret
lap2:
lcall delay
lcall turn
clr D8
lcall delay
lcall turn
clr D7
lcall delay
lcall turn
clr D6
lcall delay
lcall turn
clr D5
lcall delay
lcall turn
clr D4
lcall delay
lcall turn
clr D3
lcall delay
lcall turn
clr D2
lcall delay
lcall turn
clr D1	ret
turn:
setb D1
setb D2
setb D3
setb D4
setb D5
setb D6
setb D7
setb D8
ret
delay: 	;CHUONG TRINH CON DELAY 500MS
MOV TMOD,#10H
MOV R7,#10
LOOP:
MOV TH1,#HIGH(-50000)
MOV TL1,#LOW(-50000)
SETB TR1
JNB TF1,$
CLR TR1
CLR TF1
DJNZ R7,LOOP
RET
end


