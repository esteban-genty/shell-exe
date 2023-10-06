file=number_connection-$(date +"%d-%m-%y-%R")
user="vm"

last | grep $user | wc -l > $file
tar -cvf "/home/vm/Documents/shell-exe/Job08/$file.tar" "$file"
mv "/home/vm/Documents/shell-exe/Job08/$file.tar" "/home/vm/Documents/shell-exe/Job08/Backup"
rm "/home/vm/Documents/shell-exe/Job08/$file"
