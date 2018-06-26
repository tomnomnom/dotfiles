#!/bin/bash
xargs -P20 -n1 -I{} check-cname {}
