@echo on
:menu
@mode con: cols=120 lines=55
@cmd < txt/color_code.txt
@CLS
@title 7B120����4GTBOX���Խű�����JerС��
@echo -----------��ӭʹ��4GTBOX���Խű�-----------
@echo ---------------���ߣ�JerС��----------------
@echo --------------�ű��汾��v3.7----------------
@echo.
@echo ��ǰ���ڣ�%date:~0,4%��%date:~5,2%��%date:~8,2%��
@echo ��ǰʱ�䣺%time:~0,2%ʱ%time:~3,2%��%time:~6,2%��
@echo ��¼�㣺%date:~0,4%.%date:~5,2%.%date:~8,2%-%time:~0,2%:%time:~3,2%:%time:~6,2%
@echo.
@echo ==========TBOX����汾��oemapp/tbox-version��==========
@echo.
@adb shell cat oemapp/tbox-version
@echo.
@echo ==========���ܲ˵�==========
@echo.
@echo  1������ADB Shell					 2����־����
@echo  3�����繦��						 4��OTA����  
@echo  5����xcall����						 6����vin
@echo  7����iccid						 8����sn  
@echo  9����汾						10���������ļ� 
@echo 11��д��vin						12��д��ecall���루�ֶ���
@echo 13��д��ecall���루�Զ���				14��д��icall����
@echo 15��д��xcall���루����xcall���룩			16��д��sn�� 
@echo 17����productkey					18����devicesecret
@echo 19��д��productkey					20��д��devicesecret 
@echo 21�����豸tsp��¼��Ϣ					22�����豸������ 
@echo 23������汾��ѯ���Զ�ˢ�½ű���			24��֤��״̬��ѯ���л���ӲPKI����֤�飩
@echo 25������hal���̼��ű�					26���л��ű�����ɫ������ɫ
@echo 27��ARP���ű����Զ�ˢ�½ű���				28�����productkey 
@echo 29�����devicesecret					30�����sn 
@echo 31�����vin											
@echo 32������˽Կ  client.key��client.key���ڽű���Ŀ¼��
@echo 33�����빫Կ  client.pub��client.pub���ڽű���Ŀ¼��  
@echo 34������Tbox֤��  TBOX.crt��TBOX.crt���ڽű���Ŀ¼��
@echo 35������Tbox֤��  OTA.crt��OTA.crt���ڽű���Ŀ¼��	
@echo 36�����н��̼��ű�
@echo 37���鿴GPS��Ϣ����									
@echo 0��ˢ�� 
@echo.
@set /p a=������ѡ�
@if %a%==1 goto shell
@if %a%==2 goto log
@if %a%==3 goto network
@if %a%==4 goto ota
@if %a%==5 goto cat_xcall
@if %a%==6 goto cat_vin
@if %a%==7 goto cat_iccid
@if %a%==8 goto cat_sn
@if %a%==9 goto cat_ver
@if %a%==10 goto cat_7B120
@if %a%==11 goto send_vin
@if %a%==12 goto send_ecall
@if %a%==13 goto send_autoecall
@if %a%==14 goto send_icall
@if %a%==15 goto send_xcall
@if %a%==16 goto send_sn
@if %a%==17 goto cat_productkey
@if %a%==18 goto cat_devicesecret
@if %a%==19 goto send_productkey
@if %a%==20 goto send_devicesecret
@if %a%==21 goto cat_tspinfo
@if %a%==22 goto open_devmgmt
@if %a%==23 goto ver_du
@if %a%==24 goto http_addr_type
@if %a%==25 goto grep_hal
@if %a%==26 goto color_change
@if %a%==27 goto cat_arp
@if %a%==28 goto send_productkey000
@if %a%==29 goto send_devicesecret000
@if %a%==30 goto send_sn000
@if %a%==31 goto send_vin000
@if %a%==32 goto push_client_key
@if %a%==33 goto push_client_pub
@if %a%==34 goto push_tbox_crt
@if %a%==35 goto push_ota_crt
@if %a%==36 goto adb_killserver
@if %a%==0 goto menu
@if %a%==Jerxiaoming goto game
@echo ������󣡣���
@pause
@goto menu

:push_client_key
adb push  client.key  /oemdata/configs/
@pause
@goto menu

:push_client_pub
adb push  client.pub  /oemdata/configs/
@pause
@goto menu

:push_tbox_crt
adb push  TBOX.crt  /oemdata/configs/
@pause
@goto menu

:push_ota_crt
adb push  OTA.crt  /oemdata/configs/
@pause
@goto menu


:color_change
@CLS
@echo ��һ����Ӧ�ڱ������ڶ�����Ӧ��ǰ����ÿ�����ֿ���Ϊ�����κ�ֵ:
@echo.
@echo    0 = ��ɫ       8 = ��ɫ
@echo    1 = ��ɫ       9 = ����ɫ
@echo    2 = ��ɫ       A = ����ɫ
@echo    3 = ǳ��ɫ     B = ��ǳ��ɫ
@echo    4 = ��ɫ       C = ����ɫ
@echo    5 = ��ɫ       D = ����ɫ
@echo    6 = ��ɫ       E = ����ɫ
@echo    7 = ��ɫ       F = ����ɫ
@echo.
@echo ʾ����
@echo.
@echo    07=�ڵװ���
@echo    0B=�ڵ�����
@echo    03=�ڵ׻���
@echo    70=�׵׺���
@echo    F0=��׵׺���
@echo.
@set /p a=��������ɫ���룺
@echo.
@echo.
@echo @color %a% > txt/color_code.txt
@echo @CLS >> txt/color_code.txt
@pause
@goto menu

:grep_hal
@start txt\grep_hal.bat
@goto menu

:cat_arp
@start txt\cat_arp.bat
@goto menu

:http_addr_type
@mode con: cols=120 lines=40
@cmd < txt/color_code.txt 
@CLS
@echo.
@echo.
@echo ==========֤��״̬��ѯ���л���ӲPKI����֤�飩==========
@echo.
@adb shell < txt/cat_http_addr_type.txt
@echo.
@echo.
@echo ˵����
@echo ��֤�飺http_addr_type="0"
@echo ӲPKI��http_addr_type="1"
@echo.
@echo ֤���л�����������Ч
@echo.
@echo ==========֤���л�����==========
@echo.
@echo A���л�����֤��
@echo B���л���ӲPKI
::@echo 3������4gģ��
@echo 4����ѯhal��־�����������������ϱ�����
@echo 0��������һ��
@echo.
@set /p a=������ѡ�
@if %a%==A goto send_http_addr_0
@if %a%==B goto send_http_addr_1
::@if %a%==3 goto reboot
@if %a%==4 goto log_hal_now2
@if %a%==0 goto menu
@echo ������󣡣���
@pause
@goto http_addr_type

:send_http_addr_0
@echo.
@adb shell < txt/send_http_addr_0.txt
@pause
@goto http_addr_type

:send_http_addr_1
@echo.
@adb shell < txt/send_http_addr_1.txt
@pause
@goto http_addr_type

:reboot
@echo.
adb shell reboot
@pause
@goto http_addr_type

:log_hal_now2
@start /max cmd /k adb shell tail -f /oemdata/logs/hal_info.log
@goto http_addr_type

:ver_du
@start txt\ver_du.bat
@goto menu

:shell
@start /max cmd /k adb shell
@goto menu

:open_devmgmt
@start C:\Windows\System32\devmgmt.msc
@goto menu

:log
@mode con: cols=120 lines=40
@cmd < txt/color_code.txt 
@CLS
@echo.
@echo.
@echo ==========��־·��Ԥ����/oemdata/logs/��==========
@echo.
@adb shell ls /oemdata/logs/
@adb shell ls /media/sdcard/data/tbox_log/
@echo.
@echo ==========��־����==========
@echo.
@echo 1����ѯb.log����������������Уʱ
@echo 2����ѯgps��־������������������λ����
@echo 3����ѯhal��־�����������������ϱ�����
@echo 4����ѯgprs��־�����������������绰����
@echo 5����ѯmcu��־����������������mcu_info
@echo 6����ѯota��־����������������otaApp.log
@echo 7����ѯ�Ƿ�ɹ�����tspƽ̨
@echo 8����ѯ�ֶ��������־�ļ�����tail -f��
@echo 9����ѯ�ֶ��������־�ļ�����cat��
@echo 10����������log����adb��Ŀ¼�����Ե�ǰʱ��������
@echo 11������ָ���ļ��У���adb��Ŀ¼�����Զ���������
@echo 12������������OTA��log����adb��Ŀ¼��
@echo 13���������log�ļ���/oemdata/logs/��
@echo 0��������һ��
@echo.
@set /p a=������ѡ�
@if %a%==1 goto log_blog_now
@if %a%==2 goto log_gps_today_now
@if %a%==3 goto log_hal_now
@if %a%==4 goto log_gprs_now
@if %a%==5 goto log_mcu_now
@if %a%==6 goto log_ota_now
@if %a%==7 goto log_tsp_connect
@if %a%==8 goto log_xx_now
@if %a%==9 goto log_xx
@if %a%==10 goto log_pull_now
@if %a%==11 goto log_pull
@if %a%==12 goto pull_ota_log
@if %a%==13 goto log_rm
@if %a%==0 goto menu
@echo ������󣡣���
@pause
@goto log

:pull_ota_log
@set a=ota_log_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
@adb pull /sdcard/ota/log %a%
@goto log

:log_ota_now
@start /max cmd /k adb shell tail -f /sdcard/ota/log/file/otaApp.log
@goto log

:log_tsp_connect
@echo.
@echo.
@adb shell < txt/cat_tsp_connect.txt
@echo.
@pause
@goto log

:log_gps_today_now
@start /max cmd /k adb shell tail -f /oemdata/logs/gps_info.log
@goto log

:log_blog_now
@start /max cmd /k adb shell tail -f /oemdata/logs/b.log
@goto log

:log_xx_now
@echo.
@echo.
@set /p filename2=��������־�ļ�����
@echo.
@echo.
@start /max cmd /k adb shell tail -f /oemdata/logs/%filename2%
@goto log

:log_xx
@echo.
@echo.
@set /p filename2=��������־�ļ�����
@echo.
@echo.
@start /max cmd /k adb shell cat /oemdata/logs/%filename2%
@goto log

:log_hal_now
@start /max cmd /k adb shell tail -f /oemdata/logs/hal_info.log
@goto log

:log_gprs_now
@start /max cmd /k adb shell tail -f /oemdata/logs/gprs_info.log
@goto log

:log_mcu_now
@start /max cmd /k adb shell tail -f /oemdata/logs/mcu_info.log
@goto log

:log_rm
@echo.
@echo.
adb shell rm -r /oemdata/logs/*
::adb shell rm -r /oemdata/logs/*.log.*
@echo.
@echo.
@pause
@goto log

:log_pull
@echo.
@echo.
@set /p a=��������־�ļ�����
@echo.
@echo.
@adb pull /oemdata/logs %a%
@pause
@echo.
goto log

:log_pull_now
@echo.
@echo.
@set a=log_%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%
@adb pull /oemdata/logs %a%
@adb pull /media/sdcard/data/tbox_log/  %a%
@echo.
goto log

:network
@mode con: cols=120 lines=40
@cmd < txt/color_code.txt 
@CLS
@echo.
@echo ==========ip��ַ˵����vlan��==========
@echo.
@echo tbox��192.168.2.43
@echo ���أ�192.168.4.55
@echo mapecu��192.168.2.14
@echo mpc3��192.168.4.28
@echo ������192.168.4.32
@echo.
@echo ==========ip��ַ˵��������pc�˲��ԣ�==========
@echo.
@echo tbox��192.168.225.1
@echo mapecu��192.168.88.106
@echo.
@echo ==========���繦��==========
@echo.
@echo 1���鿴Tbox���粦��״̬
@echo 2��ping �ٶ�
@echo 3��ping ����
@echo 4��ping mapecu
@echo 5��ping mpc3
@echo 6��ping 4gtbox
@echo 7��ping ����
@echo 0��������һ��
@echo.
@set /p a=������ѡ�
@if %a%==1 goto ifconfig
@if %a%==2 goto ping_baidu
@if %a%==3 goto ping_gateway
@if %a%==4 goto ping_mapecu
@if %a%==5 goto ping_mpc3
@if %a%==6 goto ping_4gtbox
@if %a%==7 goto ping_cheji

@if %a%==0 goto menu
@echo ������󣡣���
@pause
@goto network

:ifconfig
@start /max cmd /k adb shell ifconfig
@goto network

:ping_baidu
@start /max cmd /k adb shell ping www.baidu.com
@goto network

:ping_gateway
@start /max cmd /k adb shell ping 192.168.4.55
@goto network

:ping_mapecu
@start /max cmd /k adb shell ping 192.168.2.14
@goto network

:ping_mpc3
@start /max cmd /k adb shell ping 192.168.4.28
@goto network

:ping_4gtbox
@start /max cmd /k adb shell ping 192.168.2.43
@goto network

:ping_cheji
@start /max cmd /k adb shell ping 192.168.4.32
@goto network

:ota
@mode con: cols=120 lines=40
@cmd < txt/color_code.txt 
@CLS
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
@echo ==========OTA����==========
@echo.
@echo 1������OTA������(.tar�ļ�)
@echo 2��ɾ��·���µ�OTA������(.tar�ļ�)
@echo 3��ɾ��ָ���ļ�
@echo 4������
@echo 5��OTA·����ѯ���Զ�ˢ�½ű���
@echo 6��������fsm��ѯ���Զ�ˢ�½ű���
@echo 7����ѯota��־����������������otaApp.log
@echo 8����ת��nvramĿ¼�£�cd /oemdata/abup/nvram)
@echo 0��������һ��
@echo.
@set /p a=������ѡ�
@if %a%==1 goto push_ota_flie
@if %a%==2 goto rm_ota_flie
@if %a%==3 goto rm_flie
@if %a%==4 goto ota_updata
@if %a%==5 goto ota_du
@if %a%==6 goto fsm_cat
@if %a%==7 goto log_ota_now2
@if %a%==8 goto cd_nvram
@if %a%==9 goto pull_ota_log2
@if %a%==0 goto menu
@echo ������󣡣���
@pause
@goto ota

:pull_ota_log2
@adb pull /sdcard/ota/log/file/otaApp.log otaApp.log
@goto ota

:cd_nvram
@start /max cmd /k adb shell
@goto ota

:fsm_cat
@start txt\fsm_cat.bat
@goto ota

:log_ota_now2
@start /max cmd /k adb shell tail -f /sdcard/ota/log/file/otaApp.log
@goto ota

:ota_du
@start txt\ota_du.bat
@goto ota

:push_ota_flie
@echo.
@set /p ota_flie=��ota�����ļ�(.tar�ļ�)����˴���
adb push %ota_flie% /sdcard/ota/
@pause
@goto ota

:rm_ota_flie
@echo.
@echo.
@set /p a=������"yes"ȷ����ɾ�� ��
@if %a%==yes goto rm_ota_flie_yes
@echo.
@echo.
@echo ȡ��ɾ��~
@echo.
@echo.
@pause
@goto ota

:rm_ota_flie_yes
@echo.
@echo.
adb shell rm -r /sdcard/ota/*.tar
@echo.
@echo.
@pause
@goto ota

:rm_flie
@echo.
@echo.
@set /p filename=������Ҫɾ�����ļ�����������׺����
@echo.
@echo.
adb shell rm -r /sdcard/ota/%filename%
@echo.
@echo.
@pause
@goto ota

:cat_xcall
@echo.
@adb shell < txt/cat_xcall.txt
@echo.
@pause
@goto menu

:cat_vin
@echo.
@adb shell < txt/cat_vin.txt
@echo.
@pause
@goto menu

:cat_iccid
@echo.
@adb shell < txt/cat_iccid.txt
@echo.
@pause
@goto menu

:ota_updata
@echo.
@set /p filename=���������������ļ�����������׺����
@echo.

::ʹ���ַ�����Ƭ�����ж��ļ���ǰ׺�Ƿ��� "TBX"
@if "%filename:~0,3%" neq "TBX" (
	@echo �ļ���ǰ׺���������������ļ���......
	@pause > nul
	@goto ota
	) else ( 
		@echo �ļ���ǰ׺��ȷ......
		@echo.
		)

::ʹ���ַ�����Ƭ�����ж��ļ�����׺�Ƿ��� ".tar"
@if "%filename:~-4%" neq ".tar" (
	@echo �ļ�����׺���������������ļ���......
	@pause > nul
	@goto ota
	) else ( 
		@echo �ļ�����׺��ȷ...... 
		@echo.
		)
	
@echo ɾ��֮ǰ�������ű�......
@del txt\ota_updata.txt
@echo.
@echo �����µ������ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/ota_updata.txt
@echo /oemapp/app/bin/set_tuid -u /sdcard/ota/%filename% >> txt/ota_updata.txt
@echo exit >> txt/ota_updata.txt
@echo.
@echo ִ���µ������ű�.....
@start txt\ota_updata.bat
@start txt\timeout.bat
@echo.
@pause
@goto ota

:cat_sn
@echo.
@adb shell < txt/cat_sn.txt
@echo.
@pause
@goto menu

:cat_ver
@echo.
@adb shell < txt/cat_ver.txt
@echo.
@pause
@goto menu

:cat_7B120
@echo.
@echo ִ�в�ѯ�ű�.....
@start txt\cat_7B120.bat
@echo.
@pause
@goto menu

:send_vin
@echo.
@set /p vin_num=������Ҫ�޸ĵ�vin��
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_vin.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_vin.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:VIN string:%vin_num% >> txt/send_vin.txt
@echo exit >> txt/send_vin.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_vin.bat
@echo.
@pause
@goto menu

:send_vin000
@echo.
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_vin.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_vin.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:VIN string:00000000000000000 >> txt/send_vin.txt
@echo exit >> txt/send_vin.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_vin.bat
@echo.
@pause
@goto menu


:send_ecall
@echo.
@set /p ecall_num=������Ҫ�޸ĵ�ecall���루�ֶ�����
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_ecall.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_ecall.txt
@echo dbus-send --session --type=method_calldbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:server string:ecall_manual_num string:%ecall_num% >> txt/send_ecall.txt
@echo exit >> txt/send_ecall.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_ecall.bat
@echo.
@pause
@goto menu

:send_autoecall
@echo.
@set /p autoecall_num=������Ҫ�޸ĵ�ecall���루�Զ�����
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_autoecall.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_autoecall.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:server string:ecall_auto_num string:%autoecall_num% >> txt/send_autoecall.txt
@echo exit >> txt/send_autoecall.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_autoecall.bat
@echo.
@pause
@goto menu

:send_icall
@echo.
@set /p icall_num=������Ҫ�޸ĵ�icall���룺
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_icall.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_icall.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:server string:icall_num string:%icall_num% >> txt/send_icall.txt
@echo exit >> txt/send_icall.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_icall.bat
@echo.
@pause
@goto menu

:send_xcall
@echo.
@set /p xcall_num=������Ҫ�޸ĵ�xcall���루����xcall���룩��
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_xcall.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_xcall.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:server string:icall_num string:%xcall_num% >> txt/send_xcall.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:server string:ecall_auto_num string:%xcall_num% >> txt/send_xcall.txt
@echo dbus-send --session --type=method_calldbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:server string:ecall_manual_num string:%xcall_num% >> txt/send_xcall.txt
@echo exit >> txt/send_xcall.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_xcall.bat
@echo.
@pause
@goto menu

:send_sn
@echo.
@set /p num=������Ҫ�޸ĵ�sn�룺
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_sn.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_sn.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:TBOXSN string:%num% >> txt/send_sn.txt
@echo exit >> txt/send_sn.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_sn.bat
@echo.
@pause
@goto menu

:send_sn000
@echo.
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_sn.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_sn.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:TBOXSN string:0000000000000000 >> txt/send_sn.txt
@echo exit >> txt/send_sn.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_sn.bat
@echo.
@pause
@goto menu

:cat_productkey
@echo.
@adb shell < txt/cat_productkey.txt
@echo.
@pause
@goto menu

:cat_devicesecret
@echo.
@adb shell < txt/cat_devicesecret.txt
@echo.
@pause
@goto menu

:send_productkey000
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_productkey.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_productkey.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:PRODUCTKEY string:00000000000 >> txt/send_productkey.txt
@echo exit >> txt/send_productkey.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_productkey.bat
@echo.
@pause
@goto menu

:send_productkey
@echo.
@set /p num=������Ҫ�޸ĵ�productkey��
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_productkey.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_productkey.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:PRODUCTKEY string:%num% >> txt/send_productkey.txt
@echo exit >> txt/send_productkey.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_productkey.bat
@echo.
@pause
@goto menu

:send_devicesecret000
@echo.
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_devicesecret.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_devicesecret.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:DEVICESECRET string:00000000000000000000000000000000 >> txt/send_devicesecret.txt
@echo exit >> txt/send_devicesecret.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_devicesecret.bat
@echo.
@pause
@goto menu

:send_devicesecret
@echo.
@set /p num=������Ҫ�޸ĵ�devicesecret��
@echo.
@echo ɾ��֮ǰ��д��ű�......
@del txt\send_devicesecret.txt
@echo.
@echo �����µ�д��ű�......
@echo export DBUS_SESSION_BUS_ADDRESS=`cat /tmp/.default-msgbus-session-address` > txt/send_devicesecret.txt
@echo dbus-send --session --type=method_call --print-reply  --dest=com.yuantel.tbox.file    /com/yuantel/tbox/file  com.yuantel.tbox.file.cfg_data_set string:terminal string:DEVICESECRET string:%num% >> txt/send_devicesecret.txt
@echo exit >> txt/send_devicesecret.txt
@echo.
@echo ִ���µ�д��ű�.....
@start txt\send_devicesecret.bat
@echo.
@pause
@goto menu

:cat_tspinfo
@echo.
@adb shell < txt/cat_tspinfo.txt
@echo.
@pause
@goto menu

:adb_killserver
adb kill-server
@pause
@goto menu