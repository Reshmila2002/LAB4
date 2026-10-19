@echo off
REM Maven Wrapper launcher. Maven is downloaded automatically on first use.
setlocal
set "MVNW_DIR=%~dp0.mvn\wrapper"
set "MVNW_PROPS=%MVNW_DIR%\maven-wrapper.properties"
for /f "tokens=1,* delims==" %%A in ('findstr /b distributionUrl "%MVNW_PROPS%"') do set "MVNW_URL=%%B"
set "MVNW_HOME=%USERPROFILE%\.m2\wrapper\dists\student-manager-maven"
set "MVNW_ZIP=%MVNW_HOME%\apache-maven.zip"
set "MVNW_EXTRACT=%MVNW_HOME%\apache-maven-3.9.11"
if not exist "%MVNW_EXTRACT%\bin\mvn.cmd" (
  if not exist "%MVNW_HOME%" mkdir "%MVNW_HOME%"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Invoke-WebRequest -UseBasicParsing '%MVNW_URL%' -OutFile '%MVNW_ZIP%'"
  powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -LiteralPath '%MVNW_ZIP%' -DestinationPath '%MVNW_HOME%' -Force"
)
call "%MVNW_EXTRACT%\bin\mvn.cmd" %*
endlocal
