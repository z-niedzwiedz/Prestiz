rem echo off
del *.csv
del error.txt
echo *** start %0 *** >> log.txt
date >> log.txt < enter.txt
time >> log.txt < enter.txt

echo 51_inventorydata.ini  >> log.txt
Boss_s2c.exe 51_inventorydata.ini
if errorlevel 1 echo 51_inventorydata.ini >> error.txt

echo transfer >> log.txt
call transfer

date >> log.txt < enter.txt
time >> log.txt < enter.txt
echo *** stop %0 *** >> log.txt