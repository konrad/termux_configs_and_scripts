#!/data/data/com.termux/files/usr/bin/bash

tar cfvj notes.tar.bz2 ~/notes
gpg --encrypt \
    --trust-model always \
    --output notes.tar.bz2.gpg \
    --recipient konrad@foerstner.org \
    notes.tar.bz2

scp notes.tar.bz2.gpg df:~/

# --default-key 4096R/DF9DB3D3

#gpg  -e 

