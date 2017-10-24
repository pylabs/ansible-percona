#!/bin/bash
# see https://www.percona.com/blog/2016/05/18/where-is-the-mysql-5-7-root-password/ and
# https://dev.mysql.com/doc/refman/5.7/en/resetting-permissions.html for more info
systemctl stop mysql.service
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$1';" > /tmp/reset_mysql
mysqld --init-file=/tmp/reset_mysql &
sleep 5
killall mysqld
sleep 5
systemctl start mysql.service
rm -f /tmp/reset_mysql
mysql -uroot -p"$1" <<<'DROP DATABASE IF EXISTS test'
