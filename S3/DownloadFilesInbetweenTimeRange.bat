@echo off
setlocal

set /p S3_BUCKET="Enter the S3 bucket name (without s3://): "
set /p S3_FOLDER="Enter the folder path in the S3 bucket (leave empty for root): "
set /p START_DATETIME="Enter the start date and time (YYYY-MM-DDTHH:mm:ssZ, e.g., 2024-12-10T08:00:00Z): "
set /p END_DATETIME="Enter the end date and time (YYYY-MM-DDTHH:mm:ssZ, e.g., 2024-12-10T18:00:00Z): "
set /p LOCAL_DIR="Enter the local download directory: "

if not exist "%LOCAL_DIR%" (
    mkdir "%LOCAL_DIR%"
)

echo ----------------------------------------
echo Bucket: %S3_BUCKET%
echo Folder: %S3_FOLDER%
echo Start Date-Time: %START_DATETIME%
echo End Date-Time: %END_DATETIME%
echo Download Directory: %LOCAL_DIR%
echo ----------------------------------------

set /p CONFIRM="Are these inputs correct? (y/n): "
if /i not "%CONFIRM%"=="y" (
    echo Operation canceled.
    exit /b 1
)

if "%S3_FOLDER%"=="" (
    set S3_PREFIX=""
) else (
    set S3_PREFIX="%S3_FOLDER%"
)

echo Fetching files modified between %START_DATETIME% and %END_DATETIME%...
aws s3api list-objects --bucket %S3_BUCKET% --prefix %S3_PREFIX% --query "Contents[?LastModified>=`'%START_DATETIME%'` && LastModified<=`'%END_DATETIME%'`].[Key]" --output text > file_list.txt

if %ERRORLEVEL% neq 0 (
    echo Failed to retrieve file list. Check bucket name, permissions, time range and AWS Credentials.
    exit /b 1
)

for /f "tokens=*" %%A in (file_list.txt) do (
    if "%%A"=="" (
        echo Skipping invalid or empty key.
    ) else if "%%A"=="None" (
        echo No Files Found.
        exit /b 1
    )else (
        echo Downloading: %%A
        aws s3 cp "s3://%S3_BUCKET%/%%A" "%LOCAL_DIR%" || echo Failed to download %%A
    )
)

pause
