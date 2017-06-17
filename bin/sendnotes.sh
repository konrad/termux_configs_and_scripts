#!/data/data/com.termux/files/usr/bin/bash

tar cfvj ~/notes.tar.bz2 ~/notes
gpg --encrypt \
    --trust-model always \
    --output ~/notes.tar.bz2.gpg \
    --recipient konrad@foerstner.org \
    ~/notes.tar.bz2

scp ~/notes.tar.bz2.gpg df:~/
rm -f ~/notes.tar.bz2 ~/notes.tar.bz2.gpg
