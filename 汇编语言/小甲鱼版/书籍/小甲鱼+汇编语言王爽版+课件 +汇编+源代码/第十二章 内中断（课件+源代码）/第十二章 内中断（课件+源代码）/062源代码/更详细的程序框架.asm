assume cs:code

code segment
start: 
		;����es:diָ��Ŀ�ĵ�ַ
        ;����ds:siָ��Դ��ַ
        ;����cxΪ���䳤��
        ;���ô��䷽��Ϊ��
        rep movsb
        
		;�����ж������� 
        
		mov ax, 4c00h
        int 21h

do0: 
		;��ʾ�ַ�����Welcome to Fishc.com���� 
        
		mov ax, 4c00h
        int 21h
		
code ends
end start
