#!/bin/bash

source /opt/mustache/mustache.sh

cat /tmp/cacti_config.mu | mustache > /usr/share/webapps/cacti/include/config.php
cat /tmp/cacti_init.mu   | mustache > /tmp/cacti_init.sh
#sh /tmp/cacti_init.sh

#rm -rf /tmp/cacti*

/usr/sbin/httpd -D FOREGROUND
