@echo off
setlocal
	rem now(yyyymmddhhmmss)
	set nowDate=%date:~-10,4%%date:~-5,2%%date:~-2,2%
	set time2=%time: =0%
	set nowTime=%time2:~0,2%%time2:~3,2%%time2:~6,2%
	set now=%nowDate%_%nowTime%
	
	echo.
	echo バックアップしますか？
	echo.
	choice
	if %errorlevel%==1 goto ok
	echo.
	echo バックアップを取りませんでした
	pause>nul
	exit
	
	:ok
	xcopy /Y /E c:\TrackAndField "c:\copied project\TrackAndField_%now%"
	echo.
	echo.
	color 0 B
	echo バックアップが完了しました。
	pause >nul
	exit
endlocal