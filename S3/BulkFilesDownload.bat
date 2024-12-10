@echo off
setlocal

:: Prompt for inputs
set /p S3_BUCKET="Enter the S3 bucket name (without s3://): "
set /p S3_FOLDER="Enter the S3 folder path (leave empty for /): "
set /p PATTERN="Enter the filename pattern (e.g., *.txt, *.* for all files): "
set /p LOCAL_DIR="Enter the path of download directory: "

:: Ensure the local directory exists
if not exist "%LOCAL_DIR%" (
    mkdir "%LOCAL_DIR%"
)

:: Display the inputs for confirmation
echo.
echo Bucket: %S3_BUCKET%
echo Folder: %S3_FOLDER%
echo Pattern: %PATTERN%
echo Download Directory: %LOCAL_DIR%
echo.

:: Confirm before proceeding
set /p CONFIRM="Confirm(y/n): "
if /i not "%CONFIRM%"=="y" (
    echo Operation canceled.
    exit /b 1
)

::Download the files using the AWS CLI
echo Downloading files from s3://%S3_BUCKET%/%S3_FOLDER% to %LOCAL_DIR%
aws s3 cp "s3://%S3_BUCKET%/%S3_FOLDER%" "%LOCAL_DIR%" --recursive --exclude "*" --include "%PATTERN%"

if %ERRORLEVEL% equ 0 (
    echo Files downloaded successfully!
) else (
    echo Failed to download files. Check the AWS CLI configuration and permissions.
)

pause
