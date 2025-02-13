# SSH
## ssh - Remote security audit against the target SSH service - Audit
```
ssh-audit.py <FQDN/IP>
```

## ssh - Log in to the SSH server using the SSH client.
```
ssh <user>@<FQDN/IP>
```

## ssh - Log in to the SSH server using private key.
```
ssh -i private.key <user>@<FQDN/IP>
```

## ssh - Enforce password-based authentication.
```
ssh <user>@<FQDN/IP> -o PreferredAuthentications=password
```
