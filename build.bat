@echo off
setlocal

set NAME=tritask-sta
set DIST_FOLDER_NAME=%NAME%

set thisdir=%~dp0
set COPYCMD=xcopy
set COPYOPT_FILE=/-Y
set COPYOPT_FOLDER=/-Y /S /E /I
set DIST_FOLDER_FULLPATH=%thisdir%%DIST_FOLDER_NAME%

if exist %DIST_FOLDER_FULLPATH% (
	rmdir /s /q %DIST_FOLDER_FULLPATH%
	if exist %DIST_FOLDER_FULLPATH% (
		echo �Â��o�͐� "%DIST_FOLDER_FULLPATH%" ���폜�ł��܂���.
		echo ���̃v���O����������J���Ă���ꍇ�͕��Ă�������.
		pause
		exit /b
	)
	echo Removed the old folder "%DIST_FOLDER_FULLPATH%".
	ping localhost -n 2 > nul
)

echo Create the new publication to "%DIST_FOLDER_FULLPATH%".
mkdir "%DIST_FOLDER_FULLPATH%"
%COPYCMD% "%thisdir%helper.py" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%*.mac" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%*.hilight" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%sample.trita" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%LICENSE" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%specification.md" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%readme.md" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%changelog.md" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%readme_development.md" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
%COPYCMD% "%thisdir%test_helper.py" "%DIST_FOLDER_FULLPATH%" %COPYOPT_FILE%
pause
