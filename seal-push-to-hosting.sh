#!/bin/sh

UDIR=/srv/www/cdn/seal-256-cfb
ssh-keyscan -p $PORT $HOST >> ~/.ssh/known_hosts

echo "cd $UDIR
put debian-package/seal-256-cfb_amd64.deb seal-256-cfb_amd64.deb
put built-binaries/* .
bye" > batchfile
#Let us upload
sftp -b batchfile -P $PORT $USER@$HOST
