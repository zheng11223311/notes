~RButton::
Hotkey, MButton, Paste
Keywait, LButton, d, t0.2
        ; ���� d ��down����ʾ�������ڰ���״̬��t0.2 �ǵȴ� 0.2 �롣
if errorlevel = 0
        ; ������صĴ����루errorlevel���ܶ�� AHK ����᷵�ش����룬��������� AHK �Դ��ġ����� 0 ��Ҳ����˵����� Keywait ����ִ�гɹ�������� 1 �Ļ���˵�� Keywait ִ��ʧ�ܡ�ʧ��˵�����ǰ������Ҽ�֮��û���� 0.2 ���ڰ��������
{
send ^c
Hotkey, MButton, on
}
return

Paste:
send ^v
Hotkey, MButton, off
return

^MButton::
send ^v
return

