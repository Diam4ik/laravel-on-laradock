#!/bin/sh

if [ ! -f /etc/supervisord.d/laravel-worker.conf ]; then
    cp /etc/supervisord.d/laravel-worker.conf.example /etc/supervisord.d/laravel-worker.conf
    chmod -R 777 /etc/supervisord.d/laravel-worker.conf
fi

tail -f /dev/null