#!/bin/bash

while true; do
	/usr/local/bin/update_dwm_header
	sleep 1m
done &

exec dwm
