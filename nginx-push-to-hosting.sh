#!/bin/sh

UDIR=/srv/www/cdn/nginx-auto-config
ssh-keyscan -p $PORT $HOST >> ~/.ssh/known_hosts

echo "cd $UDIR
put debian-package/nginx-auto-config_amd64.deb nginx-auto-config.deb
put /usr/bin/nginx-auto-config nginx-auto-config_linux-amd64
bye" > batchfile
#Let us upload
sftp -b batchfile -p $PORT $USER@$HOST 