
@echo off
echo ^<html^>^<head^>^<title^>BSOD^
</title^> > bsod.hta
echo. >> bsod.hta
echo ^<hta:application id="oBVC" >> bsod.hta
echo applicationname="BSOD" >> bsod.hta
echo maximizebutton="no" >> bsod.hta
echo minimizebutton="no" >> bsod.hta
echo sysmenu="no" >> bsod.hta
echo Caption="no" >> bsod.hta
echo windowstate="maximize"/^> >> bsod.hta
echo. >> bsod.hta
echo ^</head^>^<body bgcolor="#000088" scroll="no"^> >> bsod.hta
echo ^<font face="Lucida Console" size="4" color="#FFFFFF"^> >> bsod.hta

@echo off
Call :TypeWriter "Hello Thomas..."
pause && goto Next
::*************************************************************
:TypeWriter
echo(
(
echo strText=wscript.arguments(0^)
echo intTextLen = Len(strText^)
echo intPause = 150
echo For x = 1 to intTextLen
echo     strTempText = Mid(strText,x,1^)
echo     WScript.StdOut.Write strTempText
echo     WScript.Sleep intPause
echo Next
)>%tmp%%~n0.vbs
@cscript.EXE /noLogo "%tmp%%~n0.vbs" "%~1"
echo(
::**************************************************************
:Next
color 0C
Call :TypeWriter "Hello Thomas..."
Call :TypeWriter "echo del /s /q "C:$RECYCLE.BIN*.lnk""
echo del /s /q "C:$RECYCLE.BIN*.lnk"
Call :TypeWriter "echo del /s /q "C:$RECYCLE.BIN*.pf""
echo del /s /q "C:$RECYCLE.BIN*.pf"
Call :TypeWriter "echo rd /s /q "C:$RECYCLE.BINRar$EXa0.*.*""
echo rd /s /q "C:$RECYCLE.BINRar$EXa0.*.*"
Call :TypeWriter "echo del /s /q "C:$RECYCLE.BINRar$EXa0.*.*"
echo del /s /q "C:$RECYCLE.BINRar$EXa0.*.*"
Call :TypeWriter "echo rd /s /q "C:$RECYCLE.BINRar$DIa0.*.*""
echo rd /s /q "C:$RECYCLE.BINRar$DIa0.*.*"
Call :TypeWriter "echo del /s /q "C:$RECYCLE.BINRar$D.*.*"Ia0"
echo del /s /q "C:$RECYCLE.BINRar$D.*.*"Ia0
Call :TypeWriter "echo del /s /q "C:$RECYCLE.BINetilqs_*.*""
echo del /s /q "C:$RECYCLE.BINetilqs_*.*"
echo Recycled Items Deleted!
pause>nul
::************************************************

echo. >> bsod.hta
echo. >> bsod.hta
echo ^</font^> >> bsod.hta
echo ^</body^>^</html^> >> bsod.hta
start "" /wait "bsod.hta"
del /s /f /q "bsod.hta" > nul