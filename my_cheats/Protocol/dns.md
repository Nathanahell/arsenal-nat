# DNS

## NS request to the specific nameserver - Footprinting
```
dig ns <domain.tld> @<nameserver>
```

## ANY request to the specific nameserver - Footprinting
```
dig any <domain.tld> @<nameserver>
```

## AXFR request to the specific nameserver - Footprinting
```
dig axfr <domain.tld> @<nameserver>
```

## Subdomain brute forcing - Footprinting
```
dnsenum --dnsserver <nameserver> --enum -p 0 -s 0 -o found_subdomains.txt -f ~/subdomains.list <domain.tld>
```

