assume cs:code,ss:stack

stack segment

        dw 8 dup(0)

stack ends

 

code segment

start:

        mov ax,stack

        mov ss,ax

        mov sp,10h

        mov ax,4240h

        mov dx,0fh

        mov cx,0ah

        

        call divdw

        

        mov ax,4c00h

        int 21h

 

divdw:  ;�ӳ����忪ʼ

        push ax          ;��16λ�ȱ���
        
		mov ax,dx        ;ax��ʱ���ֵ�Ǹ�16λ��

        mov dx,0         ;dx��0��Ϊ�˲�Ӱ���±�����λ��ʹ�ø�16λΪ0

        div cx           ;H/N

        mov bx,ax        ;ax,bx��ֵΪ��int��H/N  ��dx��ֵΪ(rem)H/N

        pop ax           ;ax��ֵ������L

        div cx           ;L/N��ע�⣬16λ������ʱ��Ĭ�ϱ�����DXΪ��16λ��AXΪ��16λ

        mov cx,dx    

        mov dx,bx

        ret   ;�ӳ��������

        

code ends

end start

