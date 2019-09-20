org 30
db 01
db 02
db 03
db 04
db 05
db 06
db 07
db 08
db 09
db 0A

org 00
mov al, 30
mov bl, 3A
call 50
HALT

org 50
start:
cmp al, bl
jz main 
jns finish

main:
mov dl, [al]
push dl
mod dl, 02
cmp dl, 01
jz add
inc al
pop dl
jmp start

add:
pop dl
add cl, dl
inc al
jmp start

finish:
ret
end