#!/bin/bash

domain="$1"

if [ -z "$domain" ]; then
    exit 1
fi

host -t CNAME "$domain" | grep 'is an alias for' | awk '{print $NF}' |
while read cname; do
    if ! host "$cname" &>/dev/null; then
        echo "$cname does not resolve (pointed at by $domain)";
    fi;
done
