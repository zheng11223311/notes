;�Թ����ӳ���Ĳ��Ժ���֤ 

assume cs:code,ds:data
data segment
        db 88h,88h,88h,88h,88h,88h,88h,88h,88h,88h,88h,88h,88h,88h,88h,88h
        db 11h,11h,11h,11h,11h,11h,11h,11h,11h,11h,11h,11h,11h,11h,11h,11h
data ends


code segment
start : mov ax,data
        mov ds,ax
        mov si,0
        mov di,16

        mov cx,8;

        call add128

        mov ax,4c00h
	int 21h

;��дһ���ӳ��򣬶�����128λ���ݽ�����ӡ�

;���ƣ�add128
;���ܣ�����128λ���ݽ������
;������
;   ds:siָ��洢��һ�������ڴ�ռ䣬������Ϊ128λ��������Ҫ8���ֵ�Ԫ���ɵ͵�ַ��Ԫ���ߵ�ַ��Ԫ���δ�
;   ��128λ�����ɵ͵��ߵĸ����֡��������洢�ڵ�һ�����Ĵ洢�ռ��С� 

;   ds:diָ��洢�ڶ��������ڴ�ռ�
add128: push ax
        push cx
        push si
        push di

        sub ax,ax	;��CF����Ϊ0
      s:mov ax,[si]
        adc ax,[di]
        mov [si],ax
        inc si
        inc si
        inc di
        inc di
        loop s

        pop di
        pop si
        pop cx
        pop ax
        ret       
        
code ends
end start
