#!/bin/bash

CALURL=$1
CALNAME=$2

# These commands are copied from http://wiki.ubuntuusers.de/Evolution/Synchronisation
syncevolution --configure database="$CALURL" backend=caldav target-config@owncloud calendar
syncevolution --configure sync=two-way backend=events database="$CALNAME" owncloud calendar
syncevolution --sync slow owncloud calendar
