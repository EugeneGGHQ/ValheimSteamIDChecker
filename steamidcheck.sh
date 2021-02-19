#!bin/bash
#Output all of the 7th column, removing all else with -d' ' leaving only unique entries, and outputting to steamidlist.txt
grep handshake log.txt | cut -f 7 -d' ' | sort -u > steamidlist.txt
