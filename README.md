ddns
====

Helper scripts for updating a dynamic DNS domain name.  
Uses **ip addr** and **curl** to get your IPs, sends them out with nsupdate.

usage
-----

- Set up your dynamic DNS zone:
  - `mkdir /var/lib/bind`
  - `touch /var/lib/bind/db.dynamic.example.com.jnl`
  - copy and edit `db.dynamic.example.com` to `/var/lib/bind`
  - insert and edit the contents of `named.conf.local` into your
    `/etc/bind/named.conf.local`
  - run `ddns-confgen` and copy the generated `key` to /etc/bind
  - make sure the key is only readable by the bind user

- On your clients:
  - get the keyfile, chmod it to be only be readable by the user which the script
    will run as
  - Copy `config.example` to a file named `config`
  - Edit `config` to your desires
  - Execute:

```bash
    SEND=false ./update # to see what would be sent
    ./update # to actually send it
```

requirements
------------

These are the minimum requirements for running the script on a client:

- **nsupdate**  
  can be found in the dnsutils package on most distros
- **bash**
- **GNU awk**  
  can be found in the gawk package
- **curl**
- **ip utility**  
  can be found in the iproute2 package

