@echo off
netsh wlan stop hostednetwork
netsh wlan set hostednetwork mode=disallow
pause
