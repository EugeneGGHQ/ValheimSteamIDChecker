#!bin/bash
#sidcheck.sh
#
#The below script analyses the contents of the vhserver-console.log - Just update its path as needed in place.
#
#-------------
#Outputs all of the 7th column, removing all else with -d' ' leaving only unique entries, and outputting to steamidlist.txt
#-------------
grep handshake vhserver-console.log | cut -f 7 -d' ' | sort -u > steamidlist.txt
