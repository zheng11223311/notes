
do0:
		;����ds:siָ���ַ���        
        mov ax, 0b800h
        mov es, ax
        mov di, 12*160+36*2		;����es:diָ���Դ�ռ���м�λ��
        mov cx, 21              ;����cxΪ�ַ�������
    
s: 
		mov al, [si]
        mov es:[di], al
        inc si
        add di, 2
        loop s
		
		mov ax, 4c00h
        int 21h
		
do0end:	nop
