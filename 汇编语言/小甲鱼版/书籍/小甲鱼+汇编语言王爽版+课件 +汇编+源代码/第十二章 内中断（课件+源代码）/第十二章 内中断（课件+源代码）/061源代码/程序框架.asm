assume cs:code

code segment
start: 
		;do0��װ����
         
		;�����ж������� 
		
		mov ax,4c00h
		int 21h
do0: 
		;��ʾ�ַ�����overflow���� 
        
		mov ax,4c00h
        int 21h
		
code ends
end start