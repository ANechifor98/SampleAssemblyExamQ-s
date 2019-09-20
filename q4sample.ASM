;mov al, 05 ;q4a
;mov bl, 06
;call 50
;halt

;org 50
;start:
;cmp al, bl
;jnz alsmaller
;js albigger

;alsmaller:
;mov dl, c0
;add al, 30
;mov [dl], al
;jmp finish

;albigger:
;mov dl, c0
;add bl, 30
;mov [dl], bl
;jmp finish

;finish:
;ret

;end

;q4b

org a0
db 03
db 04
db 02
db 04
db 05
db 06
db 07
db 08
db 01
db 02

org 00
mov al, a0
mov bl, a9
call 10
halt

org 10
mov dl, [al]
start:
cmp al, bl
jz main
jns finish

main:
mov cl, [al]
cmp cl, dl
js clsmaller
inc al
jmp start

clsmaller:
push cl
pop dl
inc al
jmp start

finish:
ret

end