#!/data/data/com.termux/files/usr/bin/bash
DATE=$(date +"%F-%H_%M_%S")
read -ep "New note: " TEXT
echo '- '$TEXT > notes/$DATE.txt
echo Done.
