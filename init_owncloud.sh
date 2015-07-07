#!/bin/bash

OCUSER=
OCPASS=
OCURL=

# These commands are copied from http://wiki.ubuntuusers.de/Evolution/Synchronisation
syncevolution --configure --template webdav username="$OCUSER" password="$OCPASS" syncurl="$OCURL" target-config@owncloud
syncevolution --configure --template SyncEvolution_Client sync=none syncURL=local://@owncloud username= password= peerIsClient=1 owncloud
