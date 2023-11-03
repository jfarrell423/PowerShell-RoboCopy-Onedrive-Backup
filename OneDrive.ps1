# Powershell Script to Backup my Tennessee OneDrive
# This Script needs to run on NTFS File Systems
# Where there are files larger than 4gb
# Else you will generate an error 87

$source = "C:\Users\username\OneDrive"
$destination = "J:\OneDrive"

# Copy files from source to destination, only copying newer or changed files and ignoring deletions
robocopy $source $destination /E /COPY:DAT /DCOPY:T /PURGE /XO
