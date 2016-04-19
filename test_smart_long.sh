#for freebsd
#!/usr/local/bin/bash

dev="/dev/ada0 /dev/ada1 /dev/ada2 /dev/ada3"
    for i in $dev; do
     /usr/local/sbin/smartctl -t long $i;
    done

data=`date +%Y%m%d%H%M%S`.
echo "long test smart $data"  >> /var/log/log.smart.test.cron
