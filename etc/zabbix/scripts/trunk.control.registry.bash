#!/bin/bash 
# For trunks testing uncomment those 2 lines:
#ok=$(asterisk -rx 'sip show peers' | grep -v Host | grep -v sip | grep "^[a-z].*" | awk '{print $6}' )
#echo "$ok"

Host=$(sudo asterisk -rx 'sip show peers' | grep -v Host | grep -v sip | grep -e "$1*\ \|$1*\/" |awk '{print $2}')
ok=$(sudo asterisk -rx 'sip show peers' | grep -v Host | grep -v sip | grep -e "$1*\ \|$1*\/" | awk '{print $7}' )
if [[ $Host != "(Unspecified)" && $ok = "OK" ]]; then echo 1; else echo 0; fi
