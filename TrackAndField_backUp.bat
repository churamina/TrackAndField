setlocal
	@echo off
	rem now(yyyymmddhhmmss)
	set nowDate=%date:~0,4%%date:~5,2%%date~8,2%
	set time2=%time: =0%
	set nowTime=%time2:~0,2%%time2:~3,2%%time2:~6,2%
	set now=%nowDate%_%nowTime%
	
	xcopy /Y /E c:\TrackAndField "c:\copied project\TrackAndField_%now%"
endlocal