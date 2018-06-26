#!/bin/bash

xargs -P20 -n1 -I{} bash -c "host -t CNAME {} |
    grep 'is an alias for' | awk '{print \$NF}' |
    while read cname; do
        if ! host \$cname &>/dev/null; then
            echo \"\$cname does not resolve (pointed at by {})\";
        fi;
    done"
