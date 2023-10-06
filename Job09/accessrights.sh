#!/bin/bash

file="/home/vm/Documents/shell-exe/Job09/Shell_Userlist.csv"
IFS=','

while read Id prenom Nom Mdp Role

do

Prenom=${Prenom//[[:blank:]]/}

if [ Role  = "Admin" ]

then 
	sudo useradd $Prenom
	echo "$Prenom:$Mdp" | sudo chpasswd
	sudo usermod -aG sudo $Prenom

else
	sudo useradd $Prenom
	echo "$Prenom:$Mdp" | sudo chpasswd
fi

done 

