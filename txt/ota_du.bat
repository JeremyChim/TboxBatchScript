:ota_du
@mode con: cols=80 lines=30
@color 03
@title OTA·����ѯ���Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo ==========TBOX����������·��Ԥ����/sdcard/ota/��==========
@echo.
@adb shell du -sh /sdcard/ota/*
@echo.
@set /p "size=�ܴ�С��"<nul
@adb shell du -sh /sdcard/ota/
@echo.
@echo ==========������������·��Ԥ����/sdcard/ota/package/file��==========
@echo.
@adb shell du -sh /sdcard/ota/package/file/*
@echo.
@set /p "size=�ܴ�С��"<nul
@adb shell du -sh /sdcard/ota/package/file/
@echo.
@ping /n 10 127.1 >nul
@goto ota_du2

:ota_du2
@mode con: cols=80 lines=30
@color 03
@title OTA·����ѯ���Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo ==========TBOX����������·��Ԥ����/sdcard/ota/��==========
@echo.
@adb shell du -sh /sdcard/ota/*
@echo.
@set /p "size=�ܴ�С��"<nul
@adb shell du -sh /sdcard/ota/
@echo.
@echo ==========������������·��Ԥ����/sdcard/ota/package/file��==========
@echo.
@adb shell du -sh /sdcard/ota/package/file/*
@echo.
@set /p "size=�ܴ�С��"<nul
@adb shell du -sh /sdcard/ota/package/file/
@echo.
@ping /n 10 127.1 >nul
@goto ota_du