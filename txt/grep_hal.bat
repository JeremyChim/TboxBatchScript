:tp1
@mode con: cols=70 lines=20
@color 06
@title hal���̼��ű����Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo ==========HAL���̼��==========
@echo.
@adb shell < txt/grep_hal.txt
@echo.
@echo �����־�������ڸ�Ŀ¼�µ�grep_hal.log�ļ�
@echo.
@echo ��־��¼ʱ�䣺%date:~0,4%_%date:~5,2%_%date:~8,2%--%time:~0,2%_%time:~3,2%_%time:~6,2% >> grep_hal.log
@adb shell < txt/grep_hal.txt >> grep_hal.log
@echo. >> grep_hal.log
@ping /n 10 127.1 >nul
@goto tp2

:tp2
@mode con: cols=70 lines=20
@color 03
@title hal���̼��ű����Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢд��ѯ����
@echo.
@echo ==========HAL���̼��==========
@echo.
@adb shell < txt/grep_hal.txt
@echo.
@echo �����־�������ڸ�Ŀ¼�µ�grep_hal.log�ļ�
@echo.
@echo ��־��¼ʱ�䣺%date:~0,4%_%date:~5,2%_%date:~8,2%--%time:~0,2%_%time:~3,2%_%time:~6,2% >> grep_hal.log
@adb shell < txt/grep_hal.txt >> grep_hal.log
@echo. >> grep_hal.log
@ping /n 10 127.1 >nul
@goto tp1
