#!/bin/bash

timeLimit=30

find /var/spool/exim4/input -name '*' -mtime +$timeLimit -delete
find /var/spool/exim4/msglog -name '*' -mtime +$timeLimit -delete


rm -f /var/mail/*
