git pull 
 
  

dotnet build
if %errorlevel% neq 0  GOTO :ERROR 

dotnet test
if %errorlevel% neq 0  GOTO :ERROR 


git add -A
git commit -m "Updated the Nuget packages"
git push
@REM exit

:ERROR 
@REM set /p DUMMY=Hit ENTER to continue...
exit /b %errorlevel%