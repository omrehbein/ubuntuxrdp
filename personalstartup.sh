#!/bin/sh
### BEGIN INIT INFO
# Provides:          scriptname
# Required-Start:    $remote_fs $syslog
# Required-Stop:     $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Start daemon at boot time
# Description:       Enable service provided by daemon.
### END INIT INFO
rm /var/run/xrdp/xrdp-sesman.pid
rm /var/run/xrdp/xrdp.pid
sudo /etc/init.d/xrdp restart