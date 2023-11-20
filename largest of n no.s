.model small
.stack 64
.data
.code
start: mov ax, @data
mov dx, ax
mov si, 2000h
mov di, 2500h
mov cl, [si]
mov ch, 00h
inc si
mov al, [si]
dec cl
inc si
next: cmp al, [si]
jnc fit
mov al, [si]
fit: inc si
loop next
mov [di], al
hlt
end
