assume cs:code,ds:data

data segment

        db 'Welcome to masm!',0  

data ends

code segment

start:

        mov dh,8              ;dhװ�к�(��Χ:1--25)
        mov dl,3              ;dlװ�к�(��Χ:1--80)[ע:ÿ����80�����к��Զ���1]
        mov cl,2              ;cl�д����ɫ����(0cahΪ��׸�����˸��ɫ����)

        mov ax,data

        mov ds,ax

        mov si,0


        call show_str

        

        mov ax,4c00h

        int 21h

        

show_str:   ;��ʾ�ַ������ӳ���[���忪ʼ]
        push cx
        push si			

        mov al,0A0h		;��һ��ǵðɣ�ÿ������80*2 == 160���ֽ� ==    0A0h���ֽ����ݣ����n��

		dec dh          ;�к����Դ����±��0��ʼ,���Լ�1
        mul dh          ;�൱�ڴӵ� (n-1)*0A0h ��Byte��Ԫ��ʼ����

        mov bx,ax       ;��λ�õ�λ��ƫ�Ƶ�ַ�����bx��У�

        mov al,2        ;ÿ���ַ�ռ�����ֽ�
        mul dl          ;��λ�У����ax��ŵ��Ƕ�λ�õ��е�λ��
        sub ax,2        ;�к����Դ����±��0��ʼ,����Ϊż�ֽڴ���ַ�,���Լ�2

        add bx,ax       ;��ʱbx�д�ŵ��������кŵ�ƫ�Ƶ�ַ

        mov ax,0B800h   ;�Դ濪ʼ�ĵ�ַ
        mov es,ax       ;es�д�ŵ����Դ�ĵ�0ҳ(��0--7ҳ)����ʼ�Ķε�ַ

        mov di,0        ;diָ���Դ��ƫ�Ƶ�ַ��ȷ��ָ����һ��Ҫ������ַ���λ��

        mov al,cl       ;cl�Ǵ����ɫ�Ĳ�������ʱ��al�����ɫ�ˣ���Ϊcl�±�Ҫ������ʱ���Ҫ������ַ�
		
        mov ch,0        ;�±�cx��ŵ���ÿ��׼��������ַ�

s:      mov cl,ds:[si]          ;ds:[si]ָ��Welcome to masm!����0

        jcxz ok                 ;��cl��ֵΪ0ʱ��cx == 0, ������ת����OK����������

        mov es:[bx+di],cl       ;ż��ַ����ַ�
        mov es:[bx+di+1],al     ;���ַ����ַ�����ɫ����

        inc si

        add di,2     	;ָ�����¸��ַ�
        jmp short s     ;��������ת��jcxz���뿪�Ĺؼ�����

ok:     pop si
        pop cx

        ret    ;��ʾ�ַ������ӳ���[�������]

code ends

end start

