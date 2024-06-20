#!/bin/bash

#Questão 6: Crie um script que leia um nome de arquivo do usuário e exiba o conteúdo desse arquivo.

read -p  "Digite o caminho do arquivo: " path
if [ -f $path ]; then
	less  "$path"
else
	touch "$path"
	echo "Arquivo não existe no sistema"
	echo "Criando arquivo..."
	echo "Arquivo criado no diretório $PWD"
fi
