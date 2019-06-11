#!/bin/sh

set -e

if [ ! -d "/etc/local-ssl" ]; then
    mkdir -p /etc/local-ssl
    cd /etc/local-ssl
    git clone --depth=1 $GIT_CLONE_URL .
else
    cd /etc/local-ssl
    git pull
fi

exec "/entrypoint.sh" "$@"
