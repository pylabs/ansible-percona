#!/bin/bash
mysqladmin -uroot password "$1"
mysql -uroot -p"$1" <<<'DROP DATABASE IF EXISTS test'
touch /tmp/configure_percona_done
