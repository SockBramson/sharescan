@ECHO OFF
PATH=%PATH%;E:\
:START
SET /p inputfile="Server List: " %=%
SET extension=%inputfile:~-3%
SET filename=%inputfile:~0,-4%
SET "outputfile=Output.txt"
IF %extension%==txt GOTO continue
IF %extension%==TXT GOTO continue
ECHO Incorrect entry, try again. 
GOTO start
:CONTINUE
ECHO Server List is %inputfile%
ECHO Output File is %outputfile%
cscript.exe E:\NVOpenShares.vbs %inputfile% %outputfile%
PAUSE
