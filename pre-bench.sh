#!/bin/sh
sudo truncate -s 0 -c /var/log/h2o/access.log
sudo truncate -s 0 -c /var/log/mariadb/slow.log
