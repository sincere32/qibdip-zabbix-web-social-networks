#!/bin/bash
# reviews_yelp.sh
# retrieves the number of reviews from yelp for a given id
# (c) qibdip 2011
# v1.1 2011-11-22
# parameters:
#   $1 - local server ip
#   $2 - yelp id
# To log parameters on a file uncomment next line
# echo `date` "$@" >> /etc/zabbix/externalscripts/external_script.log
wget -q -O - http://www.yelp.com/biz/$2 | grep -o -e '<span class="count">[0-9]*</span>' | grep -o -e '>.*<' | cut -d'<' -f1 | cut -d'>' -f2
