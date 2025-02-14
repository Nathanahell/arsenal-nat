# windows rdp

% rdp, windows, 3389
#plateform/windows  #target/local  #protocol/rdp #port/3389

## Check the security settings of the RDP service.
```
rdp-sec-check.pl <FQDN/IP>
```

## Log in to the RDP server from Linux.
```
xfreerdp /u:<user> /p:"<password>" /v:<FQDN/IP>
```
