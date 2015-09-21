service mysql start
echo "create database radius" >/tmp/database
mysql -u root --password=toor < /tmp/database
mysql -D radius -u root --password=toor < /opt/freeradius/etc/raddb/sql/mysql/admin.sql
mysql -D radius -u root --password=toor < /opt/freeradius/etc/raddb/sql/mysql/nas.sql
mysql -D radius -u root --password=toor < /opt/freeradius/etc/raddb/sql/mysql/schema.sql
mysql -D radius -u root --password=toor < /var/www/daloradius/contrib/db/fr2-mysql-daloradius-and-freeradius.sql
