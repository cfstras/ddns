$ORIGIN .
$TTL 2560	; 42 minutes 40 seconds
dynamic.example.com		IN SOA	ns1.example.com. ns2.example.com. (
				2013101903 ; serial
				60         ; refresh (1 minute)
				90         ; retry (1 minute 30 seconds)
				120        ; expire (2 minutes)
				120        ; minimum (2 minutes)
				)
$TTL 10800	; 3 hours
			NS	ns1.example.com.
$ORIGIN dynamic.example.com.
$TTL 60	; 1 minute

