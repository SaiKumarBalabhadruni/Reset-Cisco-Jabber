@ECHO OFF

REM Project Name: Jabber and JVDI Client Reset Batch file
REM https://github.com/SaiKumarBalabhadruni
REM Author: Sai Kumar balabhadruni
REM Website: skb.earth
REM Description: Restarts and Resets Jabber and Jabber client services on local Desktop.

taskkill /IM "vxc.exe" /F
taskkill /IM "CiscoJabber.exe" /F

Echo Ending tasks related to Jabber and JVDI Client

SET THEDIR0=%temp%
Echo Deleting all files from %THEDIR0%
DEL "%THEDIR0%\*" /F /Q /A
Echo Deleting all folders from %THEDIR0%
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR0%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR0%\%%I"
@ECHO Folder deleted.

SET THEDIR1=%AppData%\Cisco\Unified Communications
Echo Deleting all files from %THEDIR1%
DEL "%THEDIR1%\*" /F /Q /A
Echo Deleting all folders from %THEDIR1%
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR1%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR1%\%%I"
@ECHO Folder deleted.

SET THEDIR2=%LocalAppData%\Cisco\Unified Communications
Echo Deleting all files from %THEDIR2%
DEL "%THEDIR2%\*" /F /Q /A
Echo Deleting all folders from %THEDIR2%
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR2%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR2%\%%I"
@ECHO Folder deleted.

SET THEDIR3=%ProgramData%\Cisco Systems\Cisco Jabber
Echo Deleting all files from %THEDIR3%
DEL "%THEDIR3%\*" /F /Q /A
Echo Deleting all folders from %THEDIR3%
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR3%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR3%\%%I"
@ECHO Folder deleted.

SET THEDIR4=%LocalAppData%\Cisco\VXME
Echo Deleting all files from %THEDIR4%
DEL "%THEDIR4%\*" /F /Q /A
Echo Deleting all folders from %THEDIR4%
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR4%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR4%\%%I"
@ECHO Folder deleted.

ipconfig /flushdns

EXIT