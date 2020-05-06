#!/bin/sh

UDIR=/srv/www/cdn/seat-256-cfb
ssh-keyscan -p $PORT $HOST >> ~/.ssh/known_hosts

echo "cd $UDIR
put debian-package/seat-256-cfb_amd64.deb seat-256-cfb_amd64.deb
put built-binaries/* .
bye" > batchfile
#Let us upload
sftp -b batchfile -P $PORT $USER@$HOST
