:fsm_cat
@mode con: cols=50 lines=25
@color 06
@title ������fsm��ѯ���Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo dmState��0 Ĭ��ֵ
@echo dmState��4 ��������
@echo dmState��6 �������
@echo.
@adb shell cat /oemdata/abup/nvram/fsm
@adb shell cat /oemdata/abup/nvram/carInfo
@adb shell cat /oemdata/abup/nvram/0X2B_swid
@ping /n 10 127.1 >nul
@goto fsm_cat2

:fsm_cat2
@mode con: cols=50 lines=25
@color 03
@title ������fsm��ѯ���Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo dmState��0 Ĭ��ֵ
@echo dmState��4 ��������
@echo dmState��6 �������
@echo.
@adb shell cat /oemdata/abup/nvram/fsm
@adb shell cat /oemdata/abup/nvram/carInfo
@adb shell cat /oemdata/abup/nvram/0X2B_swid
@ping /n 10 127.1 >nul
@goto fsm_cat