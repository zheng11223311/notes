 assume cs:code
 
 code segment
 start: 
		mov ax,cs
        mov ds,ax
        mov si,offset do0				;����ds:siָ��Դ��ַ
        mov ax,0
        mov es,ax
        mov di,200h       				;����es:diָ��Ŀ�ĵ�ַ
        mov cx,offset do0end-offset do0	;����cxΪ���䳤��
        cld                     		;���ô��䷽��Ϊ��
        rep movsb
        
		;�����ж������� 
        
		mov ax,4c00h
        int 21h

do0: 
		;��ʾ�ַ�����Welcome to Fishc.com���� 
        
		mov ax,4c00h
        int 21h
do0end:	
		nop

code ends
end start
