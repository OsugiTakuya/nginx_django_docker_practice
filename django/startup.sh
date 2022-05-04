#!/usr/bin/env bash
uwsgi --socket :8001 --module mysite.wsgi
jupyter notebook