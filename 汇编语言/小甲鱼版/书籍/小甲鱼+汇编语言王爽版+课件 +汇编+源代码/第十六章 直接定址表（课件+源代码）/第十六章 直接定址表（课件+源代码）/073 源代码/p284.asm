assume cs:code

code segment
start:  
		mov al,60

        call showsin

        mov ax,4c00h
        int 21h

showsin:
        jmp short show
		
        table dw ag0,ag30,ag60,ag90,ag120,ag150,ag180	;�ַ���ƫ�Ƶ�ַ��
        ag0      db '0',0			;sin(0)��Ӧ���ַ�����0��
        ag30     db '0.5',0			;sin(0)��Ӧ���ַ�����0.5��
        ag60     db '0.866',0			;sin(0)��Ӧ���ַ�����0.866��
        ag90     db '1',0			;sin(0)��Ӧ���ַ�����1��
        ag120    db '0.866',0			;sin(0)��Ӧ���ַ�����0.866��
        ag150    db '0.5',0			;sin(0)��Ӧ���ַ�����0.5��
        ag180    db '0',0			;sin(0)��Ӧ���ַ�����0��
		
show:   push bx
        push es
        push si

        mov bx,0b800h
        mov es,bx

;�����ýǶ�ֵ/30 ��Ϊ�����table��ƫ������ȡ�ö�Ӧ���ַ�����ƫ�Ƶ�ַ������bx��
        mov ah,0
        mov bl,30
        div bl
        mov bl,al
        mov bh,0
        add bx,bx
        mov bx,table[bx]

;������ʾsin(x)��Ӧ���ַ���
        mov si,160*12+40*2
shows:  
		mov ah,cs:[bx]
        cmp ah,0
        je showret
        mov es:[si],ah
        inc bx
        add si,2
        jmp shows

showret:
        pop si
        pop es
        pop bx
        ret

code ends

end start
