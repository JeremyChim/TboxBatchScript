:fsm_cat
@mode con: cols=50 lines=25
@color 06
@title 艾拉比fsm查询（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo dmState：0 默认值
@echo dmState：4 正在下载
@echo dmState：6 下载完成
@echo.
@adb shell cat /oemdata/abup/nvram/fsm
@adb shell cat /oemdata/abup/nvram/carInfo
@adb shell cat /oemdata/abup/nvram/0X2B_swid
@ping /n 10 127.1 >nul
@goto fsm_cat2

:fsm_cat2
@mode con: cols=50 lines=25
@color 03
@title 艾拉比fsm查询（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo dmState：0 默认值
@echo dmState：4 正在下载
@echo dmState：6 下载完成
@echo.
@adb shell cat /oemdata/abup/nvram/fsm
@adb shell cat /oemdata/abup/nvram/carInfo
@adb shell cat /oemdata/abup/nvram/0X2B_swid
@ping /n 10 127.1 >nul
@goto fsm_cat