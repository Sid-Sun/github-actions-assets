#!/bin/sh

# Decrypt the file
mkdir $HOME/gh_actions_secrets
# --batch to prevent interactive command --yes to assume "yes" for questions
gpg --quiet --batch --yes --decrypt --passphrase="$PASSPHRASE" \
--output $HOME/gh_actions_secrets/id_rsa id_rsa.gpg
