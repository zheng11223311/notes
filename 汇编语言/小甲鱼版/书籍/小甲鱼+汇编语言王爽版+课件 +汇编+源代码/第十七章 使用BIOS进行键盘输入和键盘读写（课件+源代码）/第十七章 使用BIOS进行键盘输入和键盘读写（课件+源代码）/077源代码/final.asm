assume cs:code

code segment

start:	
	mov ax,0b800h
	mov es,ax
	mov bx,0	;es:bx	ָ��д����̵����ݵ��ڴ���

	mov al,8 	;д���������
	mov ch,0 	;�ŵ��ţ���0��ʼ
	mov cl,1 	;������ ��1��ʼ
	mov dl,0 	;��������0:����A,  1:����B,Ӳ�̴�80h��ʼ�� 80h:Ӳ��C��81h:Ӳ��D
	mov dh,0 	;��ͷ�ţ����������̼���ţ���Ϊһ������һ����ͷ����д��
	mov ah,3	;���� int 13h д�����ݵĹ��ܺ�
	int 13h

			;���ز���
			;�����ɹ�:(ah) = 0,(al) = д���������
			;����ʧ��:(ah) = �������
	
return:	
	mov ax,4c00h
	int 21h

code ends
end start