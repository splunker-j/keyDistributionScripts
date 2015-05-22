#!/bin/sh

while read -r line; do ./makeNoPASSWDSudo.sh $line; done < hostlist.txt
