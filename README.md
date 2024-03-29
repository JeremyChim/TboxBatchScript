# TboxBatchScript

基于Bat批处理编写的测试脚本，对Tbox进行指令输入。  
https://github.com/JeremyChim/TboxBatchScript

# 更新日志：

## 版本：v3.9

时间：2023.8.30

- 修改菜单提示：导出指定日志 > 导出指定文件夹

## 版本：v3.8

时间：2023.8.30

- OTA升级功能中，增加了升级包文件名的判断：

- 文件名前缀不是 "TBX"，后缀不是 ".tar"，都会提示并且阻止升级操作

- 这该死的台风~🥱🙃🤨

## 版本：v3.7

时间：2023.2.15 

- 来自丽敏同学的优化 重新排列了菜单

## 版本：v3.6

时间：2022.6.9

- 新增  36、重启adb服务（电脑休眠后adb可能无法使用）

## 版本：v3.5

时间：2022.5.25

- 修改了 2、日志功能 > 11、导出指定log（至adb根目录）（自定义命名）
  
       系统时间不同步可能会导致 10、导出所有log（至adb根目录）（以当前时间命名） 导不出log，所以可以用11来代替

## 版本：v3.4

时间：2022.5.13

- 修改 2、日志功能 > 13、清除所有log文件（/oemdata/logs/）
  
       指令改成了 adb shell rm  - r /oemdata/logs/*

## 版本：v3.3

时间：2022.5.12

- 新增 35、导入Tbox证书  OTA.crt（OTA.crt放在脚本根目录）

## 版本：v3.2

时间：2022.5.11

- 修正了  32、导入私钥  client.key（client.key放在脚本根目录）
- 34、导入Tbox证书  TBOX.crt（TBOX.crt放在脚本根目录） 指令写反了 （写错了，海原同学发现的）

## 版本：v3.1

时间：2022.5.7

- 新增 32、导入私钥  client.key（client.key放在脚本根目录）
- 新增 33、导入公钥  client.pub（client.pub放在脚本根目录）
- 新增 34、导入Tbox证书  TBOX.crt（TBOX.crt放在脚本根目录）

## 版本：v3.0

时间：2022.4.18

- 修改了 软件版本查询（自动刷新脚本）的查询时间  从3秒改到10秒

## 版本：v2.9

时间：2022.3.11

- 修改了脚本启动的窗口高度
- 修改了切换证书的选项（改成了A和B，方便区分）
- 注释了 24、证书状态查询和切换（硬PKI和软证书） 功能里的重启功能

## 版本：v2.8

时间：2022.3.11

- 修改了ota本地升级的倒计时时间（从360秒改成380秒）
- 导出log功能的指令中新增了adb pull /media/sdcard/data/tbox_log/

## 版本：v2.7

时间：2022.2.23

- 修改了txt脚本路径下的fsm_cat.bat（0x7E1改成了0x2B）
- 好像是艾拉比平台把TBOX的零件命名给更改了。。。

## 版本：v2.6

时间：2022.2.22

- 添加了清除sn和清除vin的功能

## 版本：v2.5

时间：2022.2.16

- 修正了 2.日志功能中 2.查询gps日志——定位数据 的脚本（写错了，丽敏同学发现的）

## 版本：v2.4

时间：2022.1.25

- 新增OTA艾拉比升级包路径预览
- 新增OTA艾拉比日志查询（日志功能和OTA功能）
- 新增导出艾拉比OTA的log的功能
- 修改OTA路径查询（自动刷新脚本） -  - 同时查询TBOX本地和艾拉比的路径
- 新增清除productkey的功能
- 新增清除devicesecret的功能

## 版本：v2.3

时间：2021.12.21

- 新增时间记录点（方便复制填写在测试报告中）
- 新增ARP监测脚本（自动刷新脚本）（用于监测ARP表IP可能不为19个的问题）

## 版本：v2.2

时间：2021.12.1

- 新增颜色切换的功能（出差时候发现，黑底白字看不清出，可以改成白底黑字）
- 新增网络功能>ping车机

## 版本：v2.1

时间:2021.11.30

- （建议使用cmder终端打开脚本，可以解决某些电脑adb shell状态下退格乱码的问题，设置>默认终端>勾选 强制使用conemu作为控制台应用程序的默认终端）
- 新增监测hal进程的脚本

## 版本：v2.0

时间:2021.11.15

- 新增了证书状态查询和切换（硬PKI和软证书）
- 修改了日志功能的脚本（研发对log的文件命名进行了修改）
- 修改了菜单时间显示（标明时分秒，方便打包复制时间点）

## 版本：v1.9

时间:2021.9.24

- 添加 网络功能>ping 4gtbox
- 添加 软件版本查询（自动刷新脚本）

## 版本：v1.8

时间:2021.9.8

- 修改 网络功能>ping mapecu（改为192.168.2.14）
- 优化 所有日志功能里的功能项命名
- 添加 所有日志未交时的查询
- 添加 日志功能>查询mcu日志
- 添加 日志功能>清除所有log文件
- 添加 日志功能>导出log文件（至adb根目录）（已当前时间命名）
- 添加 打开设备管理器

## 版本：v1.7

时间:2021.9.6

- 添加 网络功能>ping 网关
- 添加 网络功能>ping mapecu
- 添加 网络功能>ping mpc3
- 添加 日志功能>查询路径下的gprs日志

## 版本：v1.6

时间:2021.8.27

- 新增查设备tsp登录信息的功能
- 优化所有写入的功能（原窗口保留，弹窗新窗口执行脚本，写入后新增查询）
- 优化所有升级的功能（原窗口保留，弹窗新窗口执行脚本，升级执行后会有个定时器）
- 把gps功能改为日志功能
- 添加 日志功能>查询hal日志
- 添加 日志功能>导出日志

## 版本：v1.5

时间:2021.8.12

- 添加写入sn码的功能
- 查productkey的功能
- 查devicesecret的功能
- 写入productkey的功能
- 写入devicesecret的功能

## 版本：v1.4

时间:2021.7.30

- 优化ota升级的脚本
- 添加了写入vin的功能
- 添加了写入手动ecall的功能
- 添加了写入自动ecall的功能
- 添加了写入icall的功能
- 添加了写入所有xcall的功能

## 版本：v1.3

时间:2021.7.29

- 添加查询sn、版本的功能
- 添加了ota的升级功能

## 版本：v1.2

时间：2021.7.22

- 添加查询vin、iccid、xcall号码的功能

## 版本：v1.1

时间：2021.6.25

- 添加一些gps - log的非实时查询的功能

## 版本：v1.0

时间：2021.6.25

- 添加一些基本的功能（进入ADB、GPS功能、网络功能、OTA功能）
