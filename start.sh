#!/bin/sh

if [ -z "$SOCKS_USER" ] || [ -z "$SOCKS_PASS" ]; then
    echo "ERROR: SOCKS_USER and SOCKS_PASS variables are required"
    exit 1
fi

echo "Starting SOCKS5 proxy..."

/microsocks/microsocks \
-p 1080 \
-u "$SOCKS_USER" \
-P "$SOCKS_PASS"
