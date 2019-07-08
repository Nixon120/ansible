#!/bin/bash
# read the user codes from userlist.txt
input="userlist.txt"
# construct a "flat" list for AD
flist=""
# avoid duplications by removing all users first
realm deny --all
while read -r line; do
	# create home directory if it doesn't exist
	/sbin/mkhomedir_helper "${line}" 0077
	# Add user to the flat list
	flist="${flist} ${line}"
done < "${input}"
# Add all the user to AD in one go
# No "" around flist as it would be interpreted as a single value - including spaces.
realm permit ${flist}
