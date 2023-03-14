:ota_du
@mode con: cols=80 lines=30
@color 03
@title OTA路径查询（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo ==========TBOX本地升级包路径预览（/sdcard/ota/）==========
@echo.
@adb shell du -sh /sdcard/ota/*
@echo.
@set /p "size=总大小："<nul
@adb shell du -sh /sdcard/ota/
@echo.
@echo ==========艾拉比升级包路径预览（/sdcard/ota/package/file）==========
@echo.
@adb shell du -sh /sdcard/ota/package/file/*
@echo.
@set /p "size=总大小："<nul
@adb shell du -sh /sdcard/ota/package/file/
@echo.
@ping /n 10 127.1 >nul
@goto ota_du2

:ota_du2
@mode con: cols=80 lines=30
@color 03
@title OTA路径查询（自动刷新脚本）
@echo.
@echo 每隔10秒刷写查询……
@echo.
@echo ==========TBOX本地升级包路径预览（/sdcard/ota/）==========
@echo.
@adb shell du -sh /sdcard/ota/*
@echo.
@set /p "size=总大小："<nul
@adb shell du -sh /sdcard/ota/
@echo.
@echo ==========艾拉比升级包路径预览（/sdcard/ota/package/file）==========
@echo.
@adb shell du -sh /sdcard/ota/package/file/*
@echo.
@set /p "size=总大小："<nul
@adb shell du -sh /sdcard/ota/package/file/
@echo.
@ping /n 10 127.1 >nul
@goto ota_du