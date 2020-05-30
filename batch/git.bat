@echo off
setlocal

	rem 選択肢
	echo.
	echo 1. git pull
	echo.
	echo 2. git add
	echo.
	echo 3. git status
	echo.
	echo 4. rails
	echo.
	choice /c:1234
	if %errorlevel%==1 goto pull
	if %errorlevel%==2 goto add
	if %errorlevel%==3 goto status
	if %errorlevel%==4 goto rails

	rem pull
	:pull
	cls
	echo.
	cd c:\TrackAndField
	git pull origin master
	pause >nul
	start "" "C:\Users\sugiy\Desktop\batch\TrackAndField\TrackAndField_backUp.bat"
	exit
	
	rem add
	:add
	cls
	echo.
	cd c:\TrackAndField
	git add --a
	:comment
	set comment=
	set /P inputstr="コメントを入力してください"
	echo.
	echo 以下の内容でいいですか？
	echo.
	echo %inputstr%
	echo.
	choice
	if %errorlevel%==1 goto ok
	goto comment
	:ok
	git commit -m "%inputstr%"
	git push origin master
	pause >nul
	exit
	
	rem status
	:status
	cls
	echo.
	cd c:\TrackAndField
	git status
	pause >nul
	exit
	
	rem rails
	:rails
	cls
	echo.
	cd c:\TrackAndField\webApp
	rails server
	pause >nul
	
endlocal