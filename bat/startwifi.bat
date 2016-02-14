@echo off
netsh wlan set hostednetwork mode=allow
netsh wlan set hostednetwork ssid=PCT001_WIFI key=001001001
netsh wlan start hostednetwork
pause