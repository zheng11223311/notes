assume cs:codesg,ds:data,es:table

 

data segment

        db '1975','1976','1977','1978','1979','1980','1981','1982','1983'

        db '1984','1985','1986','1987','1988','1989','1990','1991','1992'

        db '1993','1994','1995'

        ;�����Ǳ�ʾ21���21���ַ���

 

        dd 16,22,382,1356,2390,8000,16000,24486,50065,97479,140417,197514

        dd 345980,590827,803530,1183000,1843000,2759000,3753000,4649000,5937000

        ;�����Ǳ�ʾ21�깫˾���յ�21��dword������

 

        dw 3,7,9,13,28,38,130,220,476,778,1001,1442,2258,2793,4037,5635,8226

        dw 11542,14430,45257,17800

        ;�����Ǳ�ʾ21�깫˾��Ա������21��word������

data ends

 

table segment

        db 21 dup('year summ ne ?? ')

table ends

 

codesg segment

 

start:

        mov ax,data

        mov ds,ax

        mov ax,table

        mov es,ax

 

        mov bx,0

        mov si,0

        mov di,0

        mov cx,21

 

        s:   ;����ѭ��

                mov al,[bx]

                mov es:[di],al

                mov al,[bx+1]

                mov es:[di+1],al

                mov al,[bx+2]

                mov es:[di+2],al

                mov al,[bx+3]

                mov es:[di+3],al

                ;����8��������Ǵ�����

 

                mov ax,54h[bx]     ;��һ��'������'�Ķλ�ַΪ54H

                mov dx,56h[bx]

                mov es:5h[di],ax

                mov es:7h[di],dx

                ;����4��������Ǵ�Ź�˾������

 

                mov ax,0A8h[si]    ;��һ��'����'�Ķλ�ַΪ0A8H

                mov es:0Ah[di],ax

                ;����2���Ǵ�Ź�˾������

 

                mov ax,54h[bx]

                div word ptr ds:0A8h[si]

                mov es:0dh[di],ax

                ;����3���Ǵ���˾�����

 

                add bx,4

                add si,2

                add di,16

                ;����3����Ϊ��һ��ѭ��ʱ���������׼��

                ;3���Ĵ����������ٶȾ�������Ҫ��ȡ�����ݵ�λ�õ�ƫ�Ƶ�ַ

        loop s  ;�������s��

 

mov ax,4c00h

int 21h

 

codesg ends

end start
