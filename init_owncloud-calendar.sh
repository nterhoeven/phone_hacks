#!/bin/bash

CALURL=$1
CALNAME=$2

# These commands are copied from http://wiki.ubuntuusers.de/Evolution/Synchronisation
# syncevolution --configure database="$CALURL" backend=caldav target-config@owncloud calendar
# syncevolution --configure sync=two-way backend=events database="$CALNAME" owncloud calendar
# syncevolution --sync slow owncloud calendar


# These commands are from https://help.ubuntu.com/community/SyncEvolution/Synchronize-evolution-data-with-caldav-cardav-server
syncevolution --configure backend=evolution-calendar database="$CALNAME" owncloud calendar
syncevolution --configure database="$CALURL" backend=caldav target-config@owncloud calendar
syncevolution --configure sync=two-way database="$CALNAME" owncloud calendar
syncevolution --sync refresh-from-remote owncloud calendar
