assume cs:code,ds:data,ss:stack


data segment

        db 'welcome to masm!'  ;����Ҫ��ʾ���ַ���(��16�ֽ�)
        db 02h,24h,71h         ;����������ɫ����

data ends
 

stack segment

        dw 8 dup(0)

stack ends


code segment

start:
        mov ax,data
        mov ds,ax
        mov ax,stack
        mov ss,ax
        mov sp,10h

		xor bx,bx			;bx����,����������ɫ
        mov ax,0b872h    	;�����Ļ��12���м���Դ�Ķ���ʼλ�÷���ax��
		
        mov cx,3     		;S3ѭ��������������ѭ��Ϊ3�Σ���ΪҪ��ʾ�����ַ���
s3:     push cx        		;������ջ����Ϊ��ѭ��s3������ؼĴ�����ֵ
        push ax        		;�Է�ֹ���ǵ�ֵ����ѭ���б��ƻ�
        push bx
		
        mov es,ax      		;��ʱesΪ��Ļ��12���м���Դ�Ķ���ʼλ��
		
        mov si,0			;si�������������е��ַ�
        mov di,0			;di������λĿ����

        mov cx,10h     		;S1ѭ�����ƴ�ŵ��ַ�����ѭ��Ϊ10h�Σ���Ϊһ���ַ����к�10h���ֽ�
s1:     mov al,ds:[si]
        mov es:[di],al
        inc si
        add di,2
        loop s1		      		;��ѭ��ʵ��ż��ַ�д���ַ�
        
        mov di,1  				;di��ֵ��Ϊ1,�Ӷ�Ϊ���Դ����ַ�д���ַ�����ɫ������׼��
		pop bx					
        mov al,ds:10h[bx]   	;ȡ��ɫ����
		inc bx
		
		
        mov cx,10h     			;�ڶ�����ѭ��ҲΪ10h��
s2:     mov es:[di],al
        add di,2
        loop s2       			;��ѭ��ʵ�����ַ�д���ַ�����ɫ����
        
        ;����4��Ϊ��һ����ѭ����׼��
        pop ax
        add ax,0ah   			;���Դ�Ķ���ʼ��ַ��Ϊ��ǰ�е���һ��
								;[�ڶε�ַ�м�0ah,�൱����ƫ�Ƶ�ַ�м���0a0h(=160d)]
        pop cx
        loop s3
        

        mov ax,4c00h
        int 21h

code ends

end start

