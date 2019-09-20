org c0
db 68
db "ell"
db 6F
db 1
org 0
mov bl, c0

loopy:
mov al, [bl]
cmp al, 61
js makecharlowercase
jns makecharuppercase

makecharlowercase:
cmp al, 1
jz endy
add al, 20
mov [bl], al
inc bl
jmp loopy

makecharuppercase:
cmp al, 1
jz endy
sub al, 20
mov [bl], al
inc bl
jmp loopy

endy:
end