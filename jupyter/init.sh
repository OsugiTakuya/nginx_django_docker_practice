#!/bin/sh
echo 'init succeed!!!' >> /var/log/cron.log
crond
jupyter-notebook