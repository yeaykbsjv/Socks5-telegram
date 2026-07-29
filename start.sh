#!/bin/sh

if [ -z "$SOCKS_USER" ] || [ -z "$SOCKS_PASS" ]; then
    echo "Missing SOCKS_USER or SOCKS_PASS"
    exit 1
fi

echo "Starting microsocks..."

/microsocks/microsocks \
-i 0.0.0.0 \
-p 1080 \
-u "$SOCKS_USER" \
-P "$SOCKS_PASS"
