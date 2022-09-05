#!/bin/sh
#Add the URL to crontab
echo "* * * * */15 curl https://link-ip.nextdns.io/${config_id}/${config_secret} 2>&1" | crontab -

#Monitor
crond -f