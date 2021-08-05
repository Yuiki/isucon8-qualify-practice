#!/bin/sh
sudo /usr/local/bin/alp ltsv --file /var/log/h2o/access.log -r --sort=sum -m "/api/users/[0-9]+,/api/events/[0-9]+,/admin/api/reports/events/[0-9]+/sales" --output="count,1xx,2xx,3xx,4xx,5xx,method,uri,min,max,sum,avg"
sudo pt-query-digest /var/log/mariadb/slow.log | sed -zE 's/INTO[^G]*G/*****/g'
