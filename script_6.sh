#!/bin/bash

sourc="/etc"
destiny="/etc/backup_conf"

if ! [[ -d "$destiny" ]]; then
	mkdir "$destiny"
fi

for file in "$sourc"/*.conf; do
	if [[ -f "$file" ]]; then
		cp "$file" "$destiny"
	fi
done

echo "Arquivos copiados para $destiny"

