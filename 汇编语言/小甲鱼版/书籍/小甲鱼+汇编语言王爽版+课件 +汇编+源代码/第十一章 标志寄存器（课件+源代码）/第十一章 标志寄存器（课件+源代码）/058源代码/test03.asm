assume cs:code
 
data segment 
       db 8,11,8,1,8,5,63,38
data ends
 
code segment

start:	mov ax,data
		mov ds,ax
        mov bx,0       		 ;ds:bxָ���һ���ֽ�
        mov ax,0       		 ;��ʼ���ۼ���
        mov cx,0
		
     s: cmp byte ptr [bx],8  ;��8���бȽ�
        jnb next       		 ;�����С��8ת��next������ѭ��
        inc ax         		 ;���С��8�ͽ�����ֵ��1
		
  next: inc bx
        loop s           	 ;����ִ�к� (ax)=2

        mov ax, 4c00h
        int 21h
	
code ends

end start