rem @echo off
echo ************ >> log.txt
echo %date% %time% Start eksportu >> log.txt

@rem del *.csv

Prestiz2Succeed.exe Boss2Succeed-pracownicy-Sulzer.ini 
if errorlevel 1 echo %date% %time% Boss2Succeed-pracownicy-Sulzer.ini >> error.txt

rem copy *.csv D:\transfer\import_to_polsystem\time_reg\
echo %date% %time% Koniec eksportu >> log.txt

rem pause

copy Boss2Succeed-pracownicy.csv %date%.csv
copy %date%.csv d:\SUCCEED\