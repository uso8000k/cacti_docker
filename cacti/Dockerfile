# Base container
FROM alpine:latest
MAINTAINER https://github.com/uso8000k/

# Environment
ENV TIMEZONE Asia/Tokyo

# Install required packages 
RUN apk update
RUN apk add bash curl

## for cacti
RUN apk add php5-apache2
RUN apk add cacti net-snmp-tools
RUN apk add mysql-client

# Start configuration to run
RUN mkdir -p /run/apache2/
ADD files/apache2/conf.d/cacti.conf /etc/apache2/conf.d/cacti.conf
ADD files/php5/php.ini              /etc/php5/php.ini
ADD files/cacti/include/config.php  /tmp/cacti_config.mu
ADD files/mustache.sh               /opt/mustache
ADD scripts/cacti_init.sh           /tmp/cacti_init.mu
ADD scripts/run.sh                  /opt/run.sh

## Clean package caches
RUN rm -rf /var/cache/apk/*

# Setup Cacti
EXPOSE 80
ENTRYPOINT ["/opt/run.sh"]
