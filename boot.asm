org 07C00h                           ; code will be loaded at this address and nasm can calculate
                                     ; offsets with it

mov si, msg                          ; move message to source index  

print:
  lodsb                              ; load value in al register and increment
                                     ; si
  cmp al, 0
  je halt

  mov ah, 0Eh                        ; value required for int 10h
  int 10h                            ; video interrupt
  jmp print

halt:
  hlt

msg db "Booting...hello !!", 0
times 510 - ($ - $$) db 0            ; fill remaining space with 0
dw 0xaa55                            ; boot signature
