📦 README: Bulk and Time-Range File Download from S3
🚀 Introduction
This guide explains how to use two powerful AWS CLI scripts for downloading files from Amazon S3: a bulk file download script for downloading entire datasets and a time-range download script for retrieving files modified within a specific time window. These scripts simplify S3 file management and save time! ⏳

✨ Features
📂 Bulk File Download Script
🗂️ Download all files from an S3 bucket or a specific folder.
🎯 Supports wildcard patterns for selective downloads.
🛠️ Automatically handles folder structures.
⏱️ Time-Range Download Script
📅 Download files modified within a specific date and time range.
⏰ Filters files using ISO 8601 format (e.g., YYYY-MM-DDTHH:mm:ssZ).
🛡️ Skips invalid or empty keys to avoid errors.
✅ Prerequisites
Install and Configure AWS CLI ⚙️:

Download and install the AWS CLI from the official AWS website.
Run aws configure to set up your credentials and default region.
Ensure Permissions 🔑:

IAM user or role must have:
s3:ListBucket 📋
s3:GetObject 📥
Windows Batch File Support 🖥️:

These scripts are designed for Windows. Open Command Prompt (cmd.exe) to execute.
📘 How to Use the Scripts
📂 1. Bulk File Download Script
🎯 Purpose:
Download all files from an S3 bucket or a specific folder. Use this script for backups or fetching a complete dataset.

🛠️ Usage:
Save the script as bulk_download_s3.bat.
Open Command Prompt.
Run the script and follow the prompts.
📝 Example Prompts:
   Enter the S3 bucket name (without s3://): my-bucket
   Enter the S3 folder path (leave empty for root): data/
   Enter the filename pattern (e.g., *.txt, *.* for all files): *.csv
   Enter the local download directory: C:\S3Downloads
🔑 Features:
Specify a wildcard pattern (e.g., *.csv) to download only specific file types.
Automatically creates the local directory if it doesn’t exist. 📂
⏱️ 2. Time-Range Download Script
🎯 Purpose:
Download files from an S3 bucket modified within a specific date and time range. Ideal for syncing recent changes. 🔄

🛠️ Usage:
Save the script as timerange_download_s3.bat.
Open Command Prompt.
Run the script and follow the prompts.

📝 Example Prompts:
   Enter the S3 bucket name (without s3://): my-bucket
   Enter the folder path in the S3 bucket (leave empty for root): logs/
   Enter the start date and time (YYYY-MM-DDTHH:mm:ssZ, e.g., 2024-12-10T08:00:00Z): 2024-12-10T00:00:00Z
   Enter the end date and time (YYYY-MM-DDTHH:mm:ssZ, e.g., 2024-12-10T18:00:00Z): 2024-12-10T23:59:59Z
   Enter the local download directory: C:\FilteredLogs
🔑 Features:
Filters files by modification date and time using precise timestamps. ⏳








Keywords for Search Optimization
AWS CLI S3 file download 🚀
Bulk S3 file download script 📂
S3 time-range file download ⏱️
Automate S3 downloads with AWS CLI 🛠️
Download files by modification date S3 🕰️
AWS S3 CLI scripts for file management 🔄
