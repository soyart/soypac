#!/bin/sh

# TODO: Use passphrase-fd flag
PASSPHRASE=$1;

for f in *.zst; do
  gpg --detach-sign --pinentry-mode loopback --passphrase $PASSPHRASE --output $f.sig --sign $f
  #gpg --detach-sign --pinentry-mode loopback --passphrase --passphrase-fd 0 --output $f.sig --sign $f 
done;
