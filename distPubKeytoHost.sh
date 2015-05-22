#!/bin/sh

while read -r line; do ./distPubKey.sh $line; done < hostlist.txt
