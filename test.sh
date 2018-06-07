#!/bin/sh
echo Pgo lives in usr/local/bin:
command -v pgo
alias pgo=/usr/local/bin/pgo
echo "username:password" > ~/.pgouser
echo Pgo version:
pgo version
pgo create cluster mycluster
echo Showing the cluster...
pgo show cluster mycluster
