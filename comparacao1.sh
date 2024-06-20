#!/bin/bash

file="$HOME/teste.txt"
path=$(ls -la $file)
if [[ -r "$file" ]]; then
	echo "O arquivo $file existe."
       	read -p "Deseja abrir o arquivo? S/N" resp
	if [[ "$resp" = "S" || "$resp" = "s" ]]; then
		cat "$file"
	else
		echo "Arquivo encotrado!"
		echo "$path"
	fi

else
	echo "O arquivo não existe"
fi
