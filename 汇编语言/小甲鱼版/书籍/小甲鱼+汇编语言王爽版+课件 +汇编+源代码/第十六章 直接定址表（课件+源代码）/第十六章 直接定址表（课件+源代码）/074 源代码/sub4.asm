;�����ӳ���4�����Ϲ���һ��
sub4:	
	push cx
	push si
	push di
	push es
	push ds

	mov si,0b800h
	mov es,si
	mov ds,si
	mov si,160			;ds:siָ���n+1��
	mov di,0			;es:diָ���n��
	cld
	mov cx,24;������24��

sub4s:	
	push cx
	mov cx,160
	rep movsb 			;����
  	pop cx
	loop sub4s

	mov cx,80	
	mov si,0
	
sub4s1: 
	mov byte ptr es:[160*24+si],' '		;���һ�����
	add si,2
	loop sub4s1

	pop ds
	pop es
	pop di
	pop si
	pop cx
	ret ;sub4 ends