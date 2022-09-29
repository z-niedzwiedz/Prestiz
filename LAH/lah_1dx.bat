rem echo off
del *.csv
del error.txt
echo *** start %0 *** >> log.txt
date >> log.txt < enter.txt
time >> log.txt < enter.txt

echo 51_materialmasterdata.ini >> log.txt
Boss_s2c.exe 51_materialmasterdata.ini 
if errorlevel 1 echo 51_materialmasterdata.ini >> error.txt

echo 51_customermasterdata.ini >> log.txt
Boss_s2c.exe 51_customermasterdata.ini
if errorlevel 1 echo 51_customermasterdata.ini >> error.txt

echo 51_invoicedata_1dx.ini >> log.txt
Boss_s2c.exe 51_invoicedata_1dx.ini
if errorlevel 1 echo 51_invoicedata_1dx.ini >> error.txt

echo 51_orderdata_1dx.ini >> log.txt
Boss_s2c.exe 51_orderdata_1dx.ini
if errorlevel 1 echo 51_orderdata_1dx.ini >> error.txt

echo transfer >> log.txt
call transfer

date >> log.txt < enter.txt
time >> log.txt < enter.txt
echo *** stop %0 *** >> log.txt