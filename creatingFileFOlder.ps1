#run commands individually using run-selection option.

New-Item -ItemType Directory -Path "D:\AzureDevops\PStest1"  #creating a new folder

#creating a file:
New-Item -ItemType File -Path "D:\AzureDevops\PStest1\sample.txt"
#New-Item -ItemType File -Path "D:\AzureDevops\PStest1\sample1.txt" -Force

#writing into a file
Set-Content -Path "D:\AzureDevops\PStest1\sample.txt" -Value "This is Priya_gowtami"

#GET CONTENT FROM FILE
Get-Content -Path "D:\AzureDevops\PStest1\sample.txt"

#removing a files from a directory
Remove-Item -Path "D:\AzureDevops\PStest1\sample1.txt"

#list out files in a directory
Get-ChildItem "D:\AzureDevops\PStest1"

#remvoing a folder/directory
New-Item -ItemType Directory -Path "D:\AzureDevops\PStest2"
New-Item -ItemType File -Path "D:\AzureDevops\PStest2\sample2.txt"
Remove-Item -Path "D:\AzureDevops\PStest2" -Force

#copying files
Copy-Item -Path "D:\AzureDevops\PStest1\sample.txt" -Destination "D:\AzureDevops\PStest1\sample1.txt"
Get-Content -Path "D:\AzureDevops\PStest1\sample1.txt"