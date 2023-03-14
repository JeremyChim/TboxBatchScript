:tp1
@mode con: cols=100 lines=40
@color 06
@title ARP监测脚本（自动刷新脚本）
@echo.
@echo 每隔10秒刷新查询……
@echo.
@echo ==========ARP监测脚本==========
@echo.
@adb shell cat /proc/net/arp
@echo.
@set /p "a=时间："<nul 
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
@set /p "a=行数统计："<nul 
@adb shell cat /proc/net/arp | find /i "192.168" /c
@echo.
@echo 监测日志将保存在根目录下的cat_arp.log文件
@echo 监测日志将保存在根目录下的cat_arp_only_row.log文件（只保留行数和时间）
@echo.
@echo 日志保存中。。。。。。
@echo.
@adb shell cat /proc/net/arp >> cat_arp.log
@set /p "a=时间："<nul >> cat_arp.log
@set /p "a=时间："<nul >> cat_arp_only_row.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp_only_row.log
@set /p "a=行数统计："<nul >> cat_arp.log
@set /p "a=行数统计："<nul >> cat_arp_only_row.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp_only_row.log
@echo.>> cat_arp.log
@echo.>> cat_arp_only_row.log
@ping /n 10 127.1 >nul
@goto tp2

:tp2
@mode con: cols=100 lines=40
@color 03
@title ARP监测脚本（自动刷新脚本）
@echo.
@echo 每隔10秒刷新查询……
@echo.
@echo ==========ARP监测脚本==========
@echo.
@adb shell cat /proc/net/arp
@echo.
@set /p "a=时间："<nul 
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%
@set /p "a=行数统计："<nul 
@adb shell cat /proc/net/arp | find /i "192.168" /c
@echo.
@echo 监测日志将保存在根目录下的cat_arp.log文件
@echo 监测日志将保存在根目录下的cat_arp_only_row.log文件（只保留行数和时间）
@echo.
@echo 日志保存中。。。。。。
@echo.
@adb shell cat /proc/net/arp >> cat_arp.log
@set /p "a=时间："<nul >> cat_arp.log
@set /p "a=时间："<nul >> cat_arp_only_row.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp.log
@echo %date:~0,4%_%date:~5,2%_%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2% >> cat_arp_only_row.log
@set /p "a=行数统计："<nul >> cat_arp.log
@set /p "a=行数统计："<nul >> cat_arp_only_row.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp.log
@adb shell cat /proc/net/arp | find /i "192.168" /c >> cat_arp_only_row.log
@echo.>> cat_arp.log
@echo.>> cat_arp_only_row.log
@ping /n 10 127.1 >nul
@goto tp1