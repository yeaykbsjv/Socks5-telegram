#!/bin/sh

/opt/microsocks/microsocks \
-i 0.0.0.0 \
-p 1080 \
-u "$SOCKS_USER" \
-P "$SOCKS_PASS"
