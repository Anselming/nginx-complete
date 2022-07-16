#!/bin/sh
# vim:sw=4:ts=4:et
set -e

if ${ANSELMELOG} -eq "true" 
then
	apk add --no-cache vim nano curl nginx bash wget -v
	echo "vim, nano, curl, nginx, bash e wget instalados"
	echo "Instalação finalizada"

	else

	apk add --no-cache vim nano curl nginx bash wget -q
fi

exec "$@"
