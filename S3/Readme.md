README: Bulk File Download from S3 and Time-Range Specific Download
Introduction
These scripts help automate the process of downloading multiple files based on your specific requirements, saving time and effort. Learn how to use the bulk file download script for downloading entire folders or buckets and the time-range download script for fetching files modified within a specified date and time range.

Features
Bulk File Download Script
Downloads all files from a specific S3 bucket or folder.
Supports wildcard patterns for flexible file selection.
Handles recursive folder structures.

Time-Range Download Script
Downloads files modified within a specified date and time range.
Filters files using ISO 8601 format (e.g., YYYY-MM-DDTHH:mm:ssZ).
Skips invalid or empty keys during the download process.
Prerequisites
AWS CLI Installed and Configured:

Download and install the AWS CLI from the official AWS website.
Run aws configure to set up your AWS credentials and default region.
Permissions:

Ensure your IAM user or role has the following permissions:
s3:ListBucket
s3:GetObject
Windows Batch File Support:

These scripts are designed for Windows environments. Ensure you have access to the command prompt.
How to Use the Scripts

1. Bulk File Download Script
   Purpose:
   Download all files from an S3 bucket or a specific folder. Use this script to back up files or fetch a complete dataset.

Usage:
Save the script as bulk_download_s3.bat.
Open a command prompt.
Run the script and follow the prompts.
Example Prompts:
plaintext
Copy code
Enter the S3 bucket name (without s3://): my-bucket
Enter the S3 folder path (leave empty for root): data/
Enter the filename pattern (e.g., _.txt, _._ for all files): _.csv
Enter the local download directory: C:\S3Downloads
Key Features:
Specify a wildcard pattern (e.g., \*.csv) to download only specific file types.
Automatically creates the local download directory if it doesn't exist.
