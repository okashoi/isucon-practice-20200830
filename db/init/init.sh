#!/bin/bash

cd /opt/dbseed

mysql -uroot -e "DROP DATABASE IF EXISTS isubata; CREATE DATABASE isubata;"
mysql -uroot isubata < ./isubata.sql
