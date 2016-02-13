:: 添加预览，win10可以预览txt，pdf，office等，很方便，对于程序员需要预览代码
:: 
:: 批处理如何修改注册表键值？
:: reg add "HKLM\system\currentcontrolset\control\storagedevicepolicies"/v writeprotect /t reg_dword /d 1 /f
:: /v 设置键名(value)
:: /t 设置数据类型(type)
:: /d 设置添加的值(data)
:: /f 表示强制(forbidden)

:: 参考资料
:: Windows 10 - Preview other file types as text in Preview Pane
:: http://superuser.com/questions/91804/windows-7-preview-other-file-types-as-text-in-preview-pane

:: RegEdit> HKEY_LOCAL_MACHINE > SOFTWARE > Classes
:: Found .XXX
:: Added a new String Value called PerceivedType with Value Date text.
:: Started working straight away.

:: HKLM  HKEY_LOCAL_MACHINE /f
:: reg add "HKLM\SOFTWARE\Classes\.sh" /v PerceivedType /d text
:: reg add "HKLM\SOFTWARE\Classes\.md" /v PerceivedType /d text
:: reg add "HKLM\SOFTWARE\Classes\.php" /v PerceivedType /d text
:: reg add "HKLM\SOFTWARE\Classes\.htaccess" /v PerceivedType /d text
:: cpp c h  ok



:: ERROR: Access is denied.