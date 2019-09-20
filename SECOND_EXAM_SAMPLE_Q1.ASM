Jmp start
Db 5a

Start:
Sti
Mov Al, c0
Mov BL, 31
Loop:
Jmp loop


Org 5a
Cli
main:
CMP al, 00
Jz finish
CMP bl, 31
Js waszero
Jz wasone


Waszero:
Inc BL
Mov [Al], BL
Inc al
Sti
Iret

Wasone:
Dec BL
Mov [Al], BL
Inc al
Sti
Iret


Finish:
End