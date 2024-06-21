#!/bin/bash

read -p "Digite o caminho para o diretório: " path
if [[ -d "$path" ]]; then
	echo "Número de arquivos: " 
	find "$path" -type f | wc -l

	echo "Número de diretórios: "
	find "$path" -type d | wc -l
else
	echo "Diretório não existe!"
fi
