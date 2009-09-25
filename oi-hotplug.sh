#!/bin/sh

exec </dev/null >/dev/null 2>/dev/null
export USER=root

for i in /lib/mdev/handlers.d/*
do
    ( . $i )
done

exec /sbin/mdev "$@"
