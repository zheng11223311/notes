assume cs:codesg,ds:datasg

datasg segment
db 'ibm             '
db 'dec             '
db 'dos             '
db 'vax             '
datasg ends

codesg segment
start: mov ax,datasg
       mov ds,ax
       mov bx,0       ;��BX����λ��

       mov cx,4
   s0: mov dx,cx      ;������dx�Ĵ�������ʱ������cx��ֵ
	   mov si,0       ;��SI����λ��
       mov cx,3
	   
    s: mov al,[bx+si]
       and al,11011111b
       mov [bx+si],al

       inc si

       loop s       ;��ʱ��CX�Ѿ�Ϊ���ˣ��԰ɣ�

       add bx,16
	   mov cx,dx   ;�ڽ������ѭ����ʱ��ָ�CX��ֵ��
       loop s0     ; CX = CX - 1  ���ж��Ƿ�Ϊ��

       mov ax,4c00h
       int 21h
codesg ends
end start

