#!/bin/bash

syncevolution --configure database=https://meinserver.com/owncloud/remote.php/caldav/calendars/MYUSER/pers%C3%B6nlich backend=caldav target-config@owncloud calendar
syncevolution --configure sync=two-way backend=events database="Persönlich" owncloud calendar
syncevolution --sync slow owncloud calendar
