cd ..\data\
if exist ..\client_error.log (
	echo "find client_error.log, please check it."
) else (
	@REM svn up
	@REM svn ci -m "this is windows bat commit. "
)
pause
cd ..\export\output\