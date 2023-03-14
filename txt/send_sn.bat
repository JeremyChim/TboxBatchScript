@mode con: cols=100 lines=30
@color 06
@title 执行新的写入脚本.....
@echo.
adb shell < txt/send_sn.txt
adb shell < txt/cat_sn.txt
@echo.
@pause
@exit
