#!/bin/bash

echo "Enter the Source SFTP Server [server1.example.com] path"
read path_origin

echo "Enter the Destination SFTP Server [server2.example.com] path"
read path_destin


/usr/bin/expect <<-EOF

spawn scp -r user@server1.example.com:$path_origin user@server2.example.com:$path_destin



expect "password:"
send "password\r"
expect "password:"
send "password\r"

expect eof

catch wait result
exit [lindex \$result 3]

EOF

status=$?

if test $status -eq 0
then
	echo "File $path_origin successfully transferred to Destination SFTP Server --> server2.example.com:$path_destin."
else
	echo "File transfer failed."
fi

