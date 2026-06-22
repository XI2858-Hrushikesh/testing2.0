#!/bin/bash
NGINX_HTML="/usr/share/nginx/html/index.html"

if grep -q "background-color: blue" "$NGINX_HTML"; then
  exit 0
else
  exit 1
fi
