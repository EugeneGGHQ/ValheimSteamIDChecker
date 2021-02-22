#!bin/bash
#sidtime.sh
#
#The below script analyses the contents of the vhserver-console.log - Just update its path as needed in place.
#-------------	  
#Output all of the 7th column, time stamps, and outputting to sidtimelist.txt
#-------------
grep handshake vhserver-console.log | cut -f-2,7-7 -d' ' | sort -u > sidtime.txt
