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

## DNS force zone transfert steps
```
# 1. identify nameservers
nslookup -type=NS zonetransfer

# 2. Testing for ANY and AXFR Zone Transfer
nslookup -type=any -query=AXFR zonetransfer.me nsztm1.digi.ninja

# 3. Force zone transfert
dig axfr @nsztm1.digi.ninja zonetransfer.me
# If the server is misconfigured and allows the transfer, you'll receive a complete list of DNS records for the domain, including all subdomains
```
