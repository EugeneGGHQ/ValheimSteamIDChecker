#!bin/bash
#sidblk.sh
#
#The below script analyses the contents of the vhserver-console.log - Just update its path as needed in place.
#
#-------------
#Output all data of blacklisted attempts to join the server up to the 8th column, including time stamps, and outputting to sidblk.txt
#-------------
grep blacklist vhserver-console.log | cut -f-8 -d' ' | sort -u > sidblk.txt
