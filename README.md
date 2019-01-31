# powershell
Powershell Scripts

A simple powershell script that maps a letter to a drive for Google Drive File Stream. This can be uploaded via MDM software and deployed as a policy/product to machines. I have tested that functionality specifically in VMWare Workspace ONE (AirWatch). 

This will first navigate in the registry (regedit.exe) to the path ($registryPath) of Drive File Stream. It will then check if the $Name exists and if not, create a new registry item with the property type DWORD. 

The $registryPath should be changed to point to the /DriveFS directory (it may be located in a different place to that in this script). 

The $value should be changed to the letter of your choosing to mount the drive as that letter (the main aim of this script). It is recommended to use a letter in the middle of the alphabet to avoid confusion with other devices.  

Tested and working on Windows 10. 
