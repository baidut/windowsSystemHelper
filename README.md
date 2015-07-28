# PCT001
PCT001 is short for **P**ersonal **C**omputer **TOOl**s 

For regular computer users, preparing some batch files can help facilitate some daily operations.
Here are a collection of windows batch files.
I hope it's useful for you.

## 笔记本建立免费WIFI热点

确定笔记本打开无线，以管理员身份运行 startwifi.bat
```
@echo off
netsh wlan set hostednetwork mode=allow
netsh wlan set hostednetwork ssid=PCT001_WIFI key=001001001
netsh wlan start hostednetwork
pause
```
注：ssid=无线网的名称 key=无线网的密码 这里名称为PCT001_WIFI，密码为001001001
然后修改网络适配器设置，选择一个有网的链接，配置其属性为允许共享给新建立的无线网

完成

关闭脚本 stopwifi.bat
```
netsh wlan stop hostednetwork
netsh wlan set hostednetwork mode=disallow
```