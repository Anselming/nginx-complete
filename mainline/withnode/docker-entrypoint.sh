#!/bin/sh
# vim:sw=4:ts=4:et
set -e

echo "Docker-Entrypoint iniciado"
cd /app
npm install
npm install -g nodemon

echo "Docker-Entrypoint finalizado"

exec "$@"
