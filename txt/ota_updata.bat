@mode con: cols=100 lines=30
@color 06
@title 执行新的升级脚本.....
@echo.
adb shell < txt/ota_updata.txt
@echo.
@pause
@exit