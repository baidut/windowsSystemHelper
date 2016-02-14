:: E盘根目录下出现垃圾文件，伴随eula.1028等这些文件产生的,还有一些install.res.1028.dll 这样和VC_RED这样的文件,并且eula.1028看起来像记事本.
:: 这些文件是vc2008再发行组件包安装时产生的临时文件,但这个软件却因为bug问题而错误的将临时文件放到了C盘更目录(本应该是temp目录并会被自动删除的,并且这个bug是微软已知的bug)
:: 
:: 以下是可以删除的文件:
:: 
:: 9个文本文件 名字分别为 
:: eula.1028.txt ， 
:: eula.1031.txt ， 
:: eula.1033.txt ， 
:: eula.1036.txt ， 
:: eula.1040.txt ， 
:: eula.1041.txt ， 
:: eula.1042.txt ， 
:: eula.2052.txt ， 
:: eula.3082.txt 。 
:: 九个.dll档 名字分别为 
:: install.res.1028.dll , 
:: install.res.1031.dll , 
:: install.res.1033.dll , 
:: install.res.1036.dll , 
:: install.res.1040.dll , 
:: install.res.1041.dll , 
:: install.res.1042.dll , 
:: install.res.2052.dll , 
:: install.res.3082.dll . 
:: 两个.ini文件，名字分别为 
:: globdata.ini ， 
:: install.ini 。 
:: 一个.exe文件 名字为 
:: install.exe 
:: 一个.cab文件 名字为 
:: VC_RED.cab 
:: 一个.MSI文件 
:: VC_RED.MSI 
:: 一个BMP图象 名字为 
:: vcredist.bmp

echo clean

del eula.1028.txt
del eula.1031.txt
del eula.1033.txt
del eula.1036.txt
del eula.1040.txt
del eula.1041.txt
del eula.1042.txt
del eula.2052.txt
del eula.3082.txt

del install.res.1028.dll
del install.res.1031.dll
del install.res.1033.dll
del install.res.1036.dll
del install.res.1040.dll
del install.res.1041.dll
del install.res.1042.dll
del install.res.2052.dll
del install.res.3082.dll

del globdata.ini
del install.ini

del VC_RED.cab
del VC_RED.MSI
del vcredist.bmp

echo finished




