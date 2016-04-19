#for freebsd                                                                                                                                    233/233               100%
#!/usr/local/bin/bash

dev="/dev/ada0 /dev/ada1 /dev/ada2 /dev/ada3"
    for i in $dev; do
     /usr/local/sbin/smartctl -t short $i;
    done

data=`date +%Y%m%d%H%M%S`
echo "short test smart $data"  >> /var/log/log.smart.test.cron
