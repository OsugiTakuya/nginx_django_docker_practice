#!/bin/sh
echo 'init succeed!!!' >> /var/log/cron.log
nohup cron && tail -f /dev/null &
jupyter-notebook