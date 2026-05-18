@echo off

:: Wifi and internet troubleshoot tool

:Menu 
cls

echo ======================================
echo 		MAIN MENU
echo ======================================
echo 1. Diagnose Network Problems
echo 2. Network and Internet Settings
echo 3. Reset Ethernet Adapter
echo 4. Exit
echo ======================================
set /p choice=Enter your choice [1-4]:
:: Decision-making based choice
if "%choice%"=="1" goto DiagnoseNetwork
if "%choice%"=="2" goto NetworkAndInternetSettings
if "%choice%"=="3" goto ResetEthernetAdapter
if "%choice%"=="4" goto Exit
echo invalid choice, please try again.
pause
goto Menu


:DiagnoseNetwork
echo Diagnose Network Problems
msdt.exe /id NetworkDiagnosticsNetworkAdapter
pause
goto Menu

:NetworkAndInternetSettings
echo Network And Internet Settings
explorer.exe ms-settings:network
pause
goto Menu

:ResetEthernetAdapter
echo Reset the network etherner adapter
netcfg -d
netsh winsock reset
netsh int ip reset
netsh advfirewall 
ipconfig /release
ipconfig /renew
ipconfig /all
pause
goto Menu


:Exit
echo: Good Bye!

