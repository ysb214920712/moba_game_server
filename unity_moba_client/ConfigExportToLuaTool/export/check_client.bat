cd ..\data\
del ..\client_error.log /Q
@REM svn up
@REM svn st > ..\st.log
..\export\lua.exe check_client.lua >> ..\st.log
if exist ..\client_error.log (
	echo "client script error, please check it."
	notepad ..\client_error.log 
) else ( 
	echo --------------------------------------------------------- >> ..\st.log
	@REM svn diff >> ..\st.log
	notepad ..\st.log
)