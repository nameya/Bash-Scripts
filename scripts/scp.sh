#!/bin/bash

echo "Enter the Source SFTP Server"
read source_server

echo "Enter the Source User-Name"
read  source_user

echo "Enter the Destination SFTP Server"
read destin_server

echo "Enter the Destination User-Name"
read  destin_user

echo "Enter the Source SFTP Server Path"
read dir_origin

echo "Enter the Destination SFTP Server Path"
read dir_destin

scp -r $source_user@$source_server:$dir_origin $destin_user@$destin_server:$dir_destin

