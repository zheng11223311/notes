assume cs:codesg,ds:datasg

datasg segment
	db 'ibm.............'
	db 'dec.............'
	db 'dos.............'
	db 'vax.............'
	dw 0			       ;����һ���֣���������cx
datasg ends

codesg segment
start:	mov ax,datasg
	mov ds,ax

	mov bx,0

	mov cx,4
s0:  mov ds:[40H],cx		;�����ѭ����cxֵ������datasg:40H��Ԫ��
	mov si,0
	mov cx,3		;cx����Ϊ�ڴ�ѭ���Ĵ���
 s: mov al,[bx+si]
	and al,11011111b
	mov [bx+si],al
	inc si
	loop s

	add bx,16
	mov cx,ds:[40H]		;��datasg:40H��Ԫ�е�ֵ�ָ�cx
	loop s0			;���ѭ����loopָ�cx�еļ���ֵ�� 1

	mov ax,4c00h
	int 21h
codesg ends
end start