:ver_du
@mode con: cols=60 lines=30
@color 06
@title 版本查询（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo ==========TBOX软件版本（oemapp/tbox-version）==========
@echo.
@adb shell cat oemapp/tbox-version
@echo.
@echo ==========详细版本查询==========
@echo.
@adb shell < txt/cat_ver.txt
@echo.
@ping /n 10 127.1 >nul
@goto ver_du2

:ver_du2
@mode con: cols=60 lines=30
@color 03
@title 版本查询（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo ==========TBOX软件版本（oemapp/tbox-version）==========
@echo.
@adb shell cat oemapp/tbox-version
@echo.
@echo ==========详细版本查询==========
@echo.
@adb shell < txt/cat_ver.txt
@echo.
@ping /n 10 127.1 >nul
@goto ver_du