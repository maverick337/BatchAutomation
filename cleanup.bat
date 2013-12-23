@echo off

Set RegQry=HKLM\Hardware\Description\System\CentralProcessor\0

REG.exe Query %RegQry% 2>nul |  find /i /n "x86">nul
 
If %ERRORLEVEL% == 0 (
   
echo 32 bit system detected >> c:\PGPInternalBeta.log
rmdir /S /Q "%appdata%\PGP Corporation"
rmdir /S /Q "%userprofile%\Local Settings\Application Data\PGP Corporation"
rmdir /S /Q "%userprofile%\My Documents\PGP"
echo PGP Directories deleted >> c:\PGPInternalBeta.log

goto :eof

) ELSE (   
echo 64 bit system detected >> c:\PGPInternalBeta.log
rmdir /S /Q "%appdata%\PGP Corporation"
rmdir /S /Q "%userprofile%\Local Settings\Application Data\PGP Corporation"
rmdir /S /Q "%userprofile%\My Documents\PGP"
 
echo PGP Directories deleted >> c:\PGPInternalBeta.log

)

:eof
echo .......End run......... >> c:\PGPInternalBeta.log