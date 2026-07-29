#!/bin/sh

if [ -z "$SOCKS_USER" ] || [ -z "$SOCKS_PASS" ]; then
  echo "Missing variables"
  exit 1
fi

echo "Starting SOCKS5 on port 443"

/microsocks/microsocks \
-p 443 \
-u "$SOCKS_USER" \
-P "$SOCKS_PASS"
