;��̣�ʵ��һ���ӳ���setscreen��Ϊ��ʾ����ṩ���¹��ܣ�
;(1) ������
;(2) ����ǰ��ɫ��
;(3) ���ñ���ɫ��
;(4) ���Ϲ���һ�С�
;
;��ڲ���˵����
;(1) �� ah �Ĵ������ݹ��ܺţ�0 ��ʾ������1��ʾ����ǰ��ɫ��2 ��ʾ���ñ���ɫ��3 ��ʾ���Ϲ���һ�У�
;(2) ����2��3�Ź��ܣ��� al ������ɫֵ��(al) ��{0,1,2,3,4,5,6,7}

setscreen: jmp short set

    table  dw sub1,sub2,sub3,sub4

set:	
	push bx	
	cmp ah,3		;�жϴ��ݵ��Ƿ���� 3
	ja sret
	mov bl,ah
	mov bh,0
	add bx,bx		;����ah�еĹ��ܺż����Ӧ�ӳ���ĵ�ַ��table���е�ƫ��
	
	call word ptr table[bx]	;���ö�Ӧ�Ĺ����ӳ���

sret:	
	pop bx	
	iret

;�����ӳ���1������
sub1:   
	push bx
	push cx
    push es
	mov bx,0b800h
	mov es,bx
	mov bx,0
	mov cx,2000
	
sub1s:  
	mov byte ptr es:[bx],' '
    add bx,2
    loop sub1s
    pop es
    pop cx
    pop bx
	ret ;sub1 ends

;�����ӳ���2������ǰ��ɫ
sub2:	
	push bx
	push cx
	push es
	mov bx,0b800h
	mov es,bx
	mov bx,1
	mov cx,2000
	
sub2s:	
	and byte ptr es:[bx],11111000b	
	or es:[bx],al 
	add bx,2
	loop sub2s

	pop es
	pop cx
	pop bx
	ret ;sub2 ends

;�����ӳ���3�����ñ���ɫ
sub3:	
	push bx
	push cx
	push es
	mov cl,4
	shl al,cl
	mov bx,0b800h
	mov es,bx
	mov bx,1
	mov cx,2000
	
sub3s:	
	and byte ptr es:[bx],10001111b
	or es:[bx],al 
	add bx,2
	loop sub2s

	pop es
	pop cx
	pop bx
	ret ; sub3 ends

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