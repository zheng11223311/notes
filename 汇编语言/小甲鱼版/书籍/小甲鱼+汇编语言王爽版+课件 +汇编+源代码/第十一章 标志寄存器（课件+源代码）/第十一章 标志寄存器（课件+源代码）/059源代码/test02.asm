assume cs:code

data segment
    db 16 dup (0)
data ends

code segment
start:	mov ax,0f000h
		mov ds,ax
		mov si,0ffffh 		;ds:siָ��f000:ffff
		mov ax,data
		mov es,ax
		mov di,15     		;es:diָ��data:15
		mov cx,16   		;(cx)=16��repѭ��16��
		
		std               	;����DF=1��������
		rep movsb
		
		mov ax, 4c00h
		int 21h
code ends

end start