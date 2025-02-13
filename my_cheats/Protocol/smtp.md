# SMTP

## Interact with SMTP server - Footprint
```
telnet <FQDN/IP> 25
```

## Querying OIDs using snmpwalk - Footprinting
```
snmpwalk -v2c -c <community string> <FQDN/IP>
```

## Bruteforcing community strings of the SNMP service - Footprinting
```
onesixtyone -c community-strings.list <FQDN/IP>
```

## Bruteforcing SNMP service OIDs  - Footprinting
```
braa <community string>@<FQDN/IP>:.1.*
```
