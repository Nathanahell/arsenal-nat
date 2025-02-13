# Curl
% curl, infrastructure

## Certificate transparency - Infrastructure enumeration - Footprinting
```
curl -s https://crt.sh/\?q\=<target-domain>\&output\=json | jq .
```

## Scan each IP address in a list using Shodan - Infrastructure enumeration - Footprinting
```
for i in $(cat ip-addresses.txt);do shodan host $i;done
```


