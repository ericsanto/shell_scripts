#!/bin/bash

len=0
read  -p "Digite a string para saber seu tamanho: " string
for i in string do;
	len=$((i + 1))
echo "o tamanho da string é ${i}"
