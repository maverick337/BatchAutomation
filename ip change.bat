@ECHO OFF

ECHO This fanciness is brought to you by Vaibhav Jain!

echo "Please enter IP Address Information " 
echo "Static IP Address 10.210.142.??:" 
set /p IP_Addr=


ECHO Setting IP Address, Subnet Mask AND Gatewaaaaaaayyy!!
netsh int ip set address name = "Local Area Connection" source = static addr = 10.210.142.%IP_Addr% mask = 255.255.248.0 gateway = 10.210.140.1
 

ECHO Press [1] to connect to vaibhav.com, [2] is you are a loser!
set /p C=[1,2]?
for %%? in (1) do if /I "%C%"=="%%?" goto Hello 
for %%? in (2) do if /I "%C%"=="%%?" goto Gotohell 

:gotohell

echo "Please enter Primary DNS Information" 
echo "Primary DNS:" 
set /p Primary_DNS=

ECHO Setting Primary DNS
netsh int ip set dns name = "Local Area Connection" source = static addr = %Primary_DNS%
goto youarestupid

:hello
ECHO Setting Primary DNS
netsh int ip set dns name = "Local Area Connection" source = static addr = 10.210.142.197

:youarestupid
ECHO Setting Secondary DNS
netsh int ip add dns name = "Local Area Connection" addr = 10.217.161.151

 
ECHO Here are the new settings for %computername%:
netsh int ip show config
 
pause