#!/usr/bin/env sh

iptables -t nat -D PREROUTING -p tcp --dport 80  -j DNAT --to-destination 127.0.0.1 || true
iptables -t nat -D PREROUTING -p tcp --dport 443  -j DNAT --to-destination 127.0.0.1 || true
iptables -t nat -I PREROUTING -p tcp --dport 80  -j DNAT --to-destination 127.0.0.1
iptables -t nat -I PREROUTING -p tcp --dport 443  -j DNAT --to-destination 127.0.0.1

while sleep 3600; do :; done
