#!/bin/bash
[ -f /etc/nginx/nginx.conf ] || envsubst '${serverName}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
[ -f /etc/nginx/conf.d/bypass.conf ] || cp /etc/nginx/conf.d.template/bypass.conf /etc/nginx/conf.d/bypass.conf
[ -f /etc/nginx/conf.d/upstream.conf ] || cp /etc/nginx/conf.d.template/upstream.conf /etc/nginx/conf.d/upstream.conf
source /docker-entrypoint.sh