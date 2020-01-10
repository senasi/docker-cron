#!/bin/sh

URL=$1

if [ ! -z "$URL" ]; then
    curl -sS -w "[%{http_code}] %{url_effective}" -o - $URL 2>&1 | gawk '{ print strftime("[%Y-%m-%d %H:%M:%S] "), $0 }'
else
    echo "missing URL argument; use: $0 https://url-to-fetch.com"
fi
