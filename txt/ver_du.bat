:ver_du
@mode con: cols=60 lines=30
@color 06
@title �汾��ѯ���Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo ==========TBOX����汾��oemapp/tbox-version��==========
@echo.
@adb shell cat oemapp/tbox-version
@echo.
@echo ==========��ϸ�汾��ѯ==========
@echo.
@adb shell < txt/cat_ver.txt
@echo.
@ping /n 10 127.1 >nul
@goto ver_du2

:ver_du2
@mode con: cols=60 lines=30
@color 03
@title �汾��ѯ���Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo ==========TBOX����汾��oemapp/tbox-version��==========
@echo.
@adb shell cat oemapp/tbox-version
@echo.
@echo ==========��ϸ�汾��ѯ==========
@echo.
@adb shell < txt/cat_ver.txt
@echo.
@ping /n 10 127.1 >nul
@goto ver_du