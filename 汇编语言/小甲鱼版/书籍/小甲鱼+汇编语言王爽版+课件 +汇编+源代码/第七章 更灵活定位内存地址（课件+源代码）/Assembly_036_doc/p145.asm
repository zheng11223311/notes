assume cs:codesg,ds:datasg,ss:stacksg

datasg segment
	db 'ibm             '
	db 'dec             '
	db 'dos             '
	db 'vax             '
datasg ends

stacksg segment			;����һ���Σ�������ջ�Σ�����Ϊ16���ֽ�
	dw 0,0,0,0,0,0,0,0
stacksg ends

codesg segment
start: mov ax,stacksg
	mov ss,ax
	mov sp,16
	mov ax,datasg
	mov ds,ax

	mov bx,0

	mov cx,4
   s0:  push cx			;�����ѭ����cxֵѹջ
	mov si,0
	mov cx,3		;cx����Ϊ�ڲ�ѭ���Ĵ���
    s:  mov al,[bx+si]
	and al,11011111b
	mov [bx+si],al
	inc si
	loop s

	add bx,16
	pop cx			;��ջ������ԭcx��ֵ���ָ�cx
	loop s0			;���ѭ����loopָ�cx�еļ���ֵ�� 1 

	mov ax,4c00h
	int 21h
codesg ends
end start

