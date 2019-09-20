input1:
IN 00
cmp al, 2F
js input1
CMP al, 40
jns input1

push al
pop bl

input2:
IN 00
cmp al, 2F
js input2
CMP al, 40
jns input2

push al
pop cl

mul bl, cl
push bl
pop al
end