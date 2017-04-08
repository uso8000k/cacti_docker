#!/bin/bash

/usr/bin/mysql -h {{CACTI_DBHost}} -u {{CACTI_DBUser}} --password={{CACTI_DBPass}} {{CACTI_DBName}} < /usr/share/webapps/cacti/cacti.sql
