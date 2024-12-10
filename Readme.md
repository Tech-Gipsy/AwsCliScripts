📦 README: Bulk and Time-Range File Download from S3<br>
🚀 Introduction
This guide explains how to use two powerful AWS CLI scripts for downloading files from Amazon S3: a bulk file download script for downloading entire datasets and a time-range download script for retrieving files modified within a specific time window. These scripts simplify S3 file management and save time! ⏳

✨ Features<br>

📂 Bulk File Download Script<br>
🗂️ Download all files from an S3 bucket or a specific folder.<br>
🎯 Supports wildcard patterns for selective downloads.<br>
🛠️ Automatically handles folder structures.<br>
⏱️ Time-Range Download Script<br>
📅 Download files modified within a specific date and time range.<br>
⏰ Filters files using ISO 8601 format (e.g., YYYY-MM-DDTHH:mm:ssZ).<br>
🛡️ Skips invalid or empty keys to avoid errors.<br>

✅ Prerequisites<br>
Install and Configure AWS CLI ⚙️:<br>

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
🛠️ Usage:<br>
Save the script as bulk_download_s3.bat.<br>
Open Command Prompt.<br>
Run the script and follow the prompts.<br>
📝 Example Prompts:<br>
		Enter the S3 bucket name (without s3://): my-bucket<br>
		Enter the S3 folder path (leave empty for root): data/<br>
		Enter the filename pattern (e.g., _.txt, _._ for all files): _.csv<br>
		Enter the local download directory: C:\S3Downloads<br>
🔑 Features:<br>
Specify a wildcard pattern (e.g., \*.csv) to download only specific file types.<br>
Automatically creates the local directory if it doesn’t exist. 📂<br>


⏱️ 2. Time-Range Download Script<br>
🎯 Purpose:<br>
Download files from an S3 bucket modified within a specific date and time range. Ideal for syncing recent changes. 🔄<br>
<br>
🛠️ Usage:<br>
Save the script as timerange_download_s3.bat.<br>
Open Command Prompt.<br>
Run the script and follow the prompts.<br>
<br>
📝 Example Prompts:<br>
		Enter the S3 bucket name (without s3://): my-bucket<br>
		Enter the folder path in the S3 bucket (leave empty for root): logs/<br>
		Enter the start date and time (YYYY-MM-DDTHH:mm:ssZ, e.g., 2024-12-10T08:00:00Z): 2024-12-10T00:00:00Z<br>
		Enter the end date and time (YYYY-MM-DDTHH:mm:ssZ, e.g., 2024-12-10T18:00:00Z): 2024-12-10T23:59:59Z<br>
		Enter the local download directory: C:\FilteredLogs<br>
<br>
Keywords for Search Optimization
AWS CLI S3 file download 🚀
Bulk S3 file download script 📂
S3 time-range file download ⏱️
Automate S3 downloads with AWS CLI 🛠️
Download files by modification date S3 🕰️
AWS S3 CLI scripts for file management 🔄
