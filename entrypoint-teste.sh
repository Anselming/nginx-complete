#!/bin/sh
# vim:sw=4:ts=4:et

set -e

if [ ${ANSELME_LOG} -eq "true" ]; then
    exec 3>&1;
    echo "Entrypoint iniciado"
else
    exec 3>/dev/null
fi

exec "$@"
