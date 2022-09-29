rem @echo off
echo ************ >> log.txt
echo %date% %time% Start eksportu >> log.txt

del *.csv

Boss_s2c.exe Boss2RCP-pracownicy.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-pracownicy.ini >> error.txt

Boss_s2c.exe Boss2RCP-pozwzdniprac.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-pozwzdniprac.ini >> error.txt

Boss_s2c.exe Boss2RCP-symdniawzorca.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-symdniawzorca.ini >> error.txt

Boss_s2c.exe Boss2RCP-wzordniprac.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-wzordniprac.ini >> error.txt

Boss_s2c.exe Boss2RCP-absencja.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-absencja.ini >> error.txt

Boss_s2c.exe Boss2RCP-symewidcp.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-symewidcp.ini >> error.txt

rem Boss_s2c.exe Boss2RCP-nadgodziny.ini 
rem if errorlevel 1 echo %date% %time% Boss2RCP-nadgodziny.ini >> error.txt

copy *.csv D:\transfer\import_to_polsystem\time_reg\
echo %date% %time% Koniec eksportu >> log.txt
