:tp1
@mode con: cols=70 lines=20
@color 06
@title hal进程监测脚本（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo ==========HAL进程监测==========
@echo.
@adb shell < txt/grep_hal.txt
@echo.
@echo 监测日志将保存在根目录下的grep_hal.log文件
@echo.
@echo 日志记录时间：%date:~0,4%_%date:~5,2%_%date:~8,2%--%time:~0,2%_%time:~3,2%_%time:~6,2% >> grep_hal.log
@adb shell < txt/grep_hal.txt >> grep_hal.log
@echo. >> grep_hal.log
@ping /n 10 127.1 >nul
@goto tp2

:tp2
@mode con: cols=70 lines=20
@color 03
@title hal进程监测脚本（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo ==========HAL进程监测==========
@echo.
@adb shell < txt/grep_hal.txt
@echo.
@echo 监测日志将保存在根目录下的grep_hal.log文件
@echo.
@echo 日志记录时间：%date:~0,4%_%date:~5,2%_%date:~8,2%--%time:~0,2%_%time:~3,2%_%time:~6,2% >> grep_hal.log
@adb shell < txt/grep_hal.txt >> grep_hal.log
@echo. >> grep_hal.log
@ping /n 10 127.1 >nul
@goto tp1
