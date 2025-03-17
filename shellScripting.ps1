#creating a variable
$var = "value"
$var #print
Write-Host $var #display
$age = Read-Host "Enter age:"


#if conditional script

$number = 10
if($number -gt 5)
{
 Write-Host "$($Number) is greater than 5" #get variable value inside ""
}
elseif($number -eq 5)
{
 Write-Host "Number is equal to 5"
}
else
{
 Write-Host "$($Number) is less than 5"
}



#for loop script
#to write a script that creates 5files which are of the same format using loops

$folderName = "MyTestFolder"
$folderPath = Join-Path -Path "D:\AzureDevops\10-3-25Day1PS" -ChildPath $folderName  #D:\AzureDevops\10-3-25Day1PS\MyTestFolder
if(-not (Test-Path -Path $folderPath)){
   New-Item -ItemType directory -Path $folderPath | Out-Null
   Write-Host "created folder: $($folderPath)"
}
else
{
   Write-Host "Folder already exists: $($folderPath)"
 }

 #create 5 files within that folder with date and time as file name and add content
 for($i=1;$i -le 5;$i++)
 {
  $dateTime = Get-Date -Format "yyyy-MM-dd"
  $fileName = "file_$($dateTime)_$($i).txt"
  $filePath = Join-Path -Path $folderpath -ChildPath $fileName
  #create file
  New-Item -ItemType File -Path $filePath -Force | Out-Null
  #set content
  $fileContent = "softwareGurukulam_$($fileName)"
  Set-Content -Path $filePath -Value $fileContent

  Write-Host "created file: $($filePath) with content: $($fileContent)"
}