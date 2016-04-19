cp -R /storage/data/* /var/doku/data/
cp -R /storage/conf/* /var/doku/conf/
chown -R www-data. /var/doku
lighttpd -D -f /etc/lighttpd/lighttpd.conf
