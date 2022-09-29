@echo off
rem import do Bossa pliku g:\nadgodziny.csv z RCP
rem logowanie startu
echo ************ >> log.txt
echo %computername% %username% %0 >> log.txt
echo %date% %time% Start importu z RCP prod >> log.txt

rem tworzenie katalogu kopii, usuwanie poprzedniego pliku importowego
md kopia
del nadgodziny.csv

rem kopiowanie plikow danych z eksportu RCP do katalogu biezacego
copy g:\*.csv *.*
rem if errorlevel 1 goto koniec

rem kopia zapasowa danych z bazy Bossa do pliku csv
Boss_s2c.exe Boss2RCP-nadgodziny.ini 
if errorlevel 1 echo %date% %time% Boss2RCP-nadgodziny.ini >> error.txt

rem wlasciwy import pliku csv do bazy Bossa
Boss_c2s.exe RCP2Boss-nadgodziny.ini 
if errorlevel 1 echo %date% %time% RCP2Boss-nadgodziny.ini >> error.txt

rem pakowanie danych dla celow diagnostycznych
zip kopia\kopia *.log *.ini *.csv *.txt *.bat
ren kopia\kopia.zip %date%.zip

rem koniec
echo %date% %time% Koniec importu >> log.txt
