#!/bin/bash

#Read eachusername from users.txt file

while IFS= read -r username; do
	#check if the user already exists
	if id "$username" >/dev/null 2>&1; then
	echo "User '$username' already exists."
else
	#create user with default password
	sudo useradd -m -p "$(openssl passwd -1 defaultpasswd)" "$username"
	echo "User '$username' created."
	fi

	# add the user to the testgroup
	sudo usermod -a -G testgroup "$username"

done < users.txt
