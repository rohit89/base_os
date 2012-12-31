org 07C00h

mov si, msg

print:
  lodsb
  cmp al, 0
  je halt

  mov ah, 0Eh
  int 10h
  jmp print

halt:
  hlt

msg db "Booting...hello !!"
times 510 - ($ - $$) db 0
dw 0xaa55
