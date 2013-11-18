ddns
====

Helper scripts for updating a dynamic DNS domain name.
Uses ip addr to get your IPs, sends them out with nsupdate.

usage
-----

1. Create a keyfile which authenticates you against your DNS server
2. Copy `config.example` to a file named `config`
3. Edit `config` to your desires
4. Execute the following:

    SEND=false ./update # to see what would be sent
    
    SEND=true  ./update # to actually send it

prerequisites
-------------

- nsupdate
  can be found in the _dnsutils_ package on most distros
- bash
- GNU awk
  can be found in the _gawk_ package
- ip utility
  can be found in the _iproute2_ package

