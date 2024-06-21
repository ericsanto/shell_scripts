#!/bin/bash

#Escreva um script que altere as permissões de todos os arquivos em um diretório para que apenas o proprietário tenha permissão de leitura e escrita, 
#e o grupo e outros não tenham nenhuma permissão.

dir="$HOME/estrutura_dados"

if [[ -d "$dir" ]]; then
	for file in "$dir"/*; do
		chmod 777 "$file"
	done
fi
