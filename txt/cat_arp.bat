:tp1
@mode con: cols=100 lines=40
@color 06
@title ARP���ű����Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢ�²�ѯ����
@echo.
@echo ==========ARP���ű�==========
@echo.
@adb shell cat /proc/net/arp
@echo.
@set /p "a=ʱ�䣺"<nul 
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
@set /p "a=����ͳ�ƣ�"<nul 
@adb shell cat /proc/net/arp | find /i "192.168" /c
@echo.
@echo �����־�������ڸ�Ŀ¼�µ�cat_arp.log�ļ�
@echo �����־�������ڸ�Ŀ¼�µ�cat_arp_only_row.log�ļ���ֻ����������ʱ�䣩
@echo.
@echo ��־�����С�����������
@echo.
@adb shell cat /proc/net/arp >> cat_arp.log
@set /p "a=ʱ�䣺"<nul >> cat_arp.log
@set /p "a=ʱ�䣺"<nul >> cat_arp_only_row.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp_only_row.log
@set /p "a=����ͳ�ƣ�"<nul >> cat_arp.log
@set /p "a=����ͳ�ƣ�"<nul >> cat_arp_only_row.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp_only_row.log
@echo.>> cat_arp.log
@echo.>> cat_arp_only_row.log
@ping /n 10 127.1 >nul
@goto tp2

:tp2
@mode con: cols=100 lines=40
@color 03
@title ARP���ű����Զ�ˢ�½ű���
@echo.
@echo ÿ��10��ˢ�²�ѯ����
@echo.
@echo ==========ARP���ű�==========
@echo.
@adb shell cat /proc/net/arp
@echo.
@set /p "a=ʱ�䣺"<nul 
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
@set /p "a=����ͳ�ƣ�"<nul 
@adb shell cat /proc/net/arp | find /i "192.168" /c
@echo.
@echo �����־�������ڸ�Ŀ¼�µ�cat_arp.log�ļ�
@echo �����־�������ڸ�Ŀ¼�µ�cat_arp_only_row.log�ļ���ֻ����������ʱ�䣩
@echo.
@echo ��־�����С�����������
@echo.
@adb shell cat /proc/net/arp >> cat_arp.log
@set /p "a=ʱ�䣺"<nul >> cat_arp.log
@set /p "a=ʱ�䣺"<nul >> cat_arp_only_row.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp_only_row.log
@set /p "a=����ͳ�ƣ�"<nul >> cat_arp.log
@set /p "a=����ͳ�ƣ�"<nul >> cat_arp_only_row.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp_only_row.log
@echo.>> cat_arp.log
@echo.>> cat_arp_only_row.log
@ping /n 10 127.1 >nul
@goto tp1