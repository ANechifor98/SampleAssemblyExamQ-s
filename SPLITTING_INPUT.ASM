IN 0 ; Read in from the keyboard
mov dl, c0
PUSH AL ; Make a backup of AL to stack
AND AL,0F ; Mask out first 4 bits

push al
pop cl ; Copy to CL
POP AL ; Restore original number

AND AL,F0 ; Mask out last 4 bits
push al
pop bl; Copy to BL

cmp bl, 20
jz put2

cmp bl, 30
jz put3

cmp bl, 40
jz put4

cmp bl, 50
jz put5

cmp bl, 60
jz put6

cmp bl, 70
jz put7

put2:
mov al, 32
mov [dl], al
jmp seconddigit

put3:
mov al, 33
mov [dl], al
jmp seconddigit

put4:
mov al, 34
mov [dl], al
jmp seconddigit

put5:
mov al, 35
mov [dl], al
jmp seconddigit

put6:
mov al, 36
mov [dl], al
jmp seconddigit

put7:
mov al, 37
mov [dl], al
jmp seconddigit

seconddigit:
inc dl
cmp cl, 9
jnz isletter

isnumber:
add cl, 30
mov [dl], cl
jmp endy

isletter:
add cl, 37
mov [dl], cl

endy:
end