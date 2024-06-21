#!/bin/bash

#Crie um script que monitore o espaço livre em disco. Se o espaço livre em qualquer partição for menor que 10%,
#o script deve enviar um alerta por email ao administrador do sistema.


file="disks_full_size.txt"
df -h | awk '{ if ($5 >= 90) print $0 }'
subject="Armazenamento de disco"
destiny="ericjesus403@gmail.com"
body="Segue o arquivo.txt com todos os discos que estão com o uso igual ou acima de 90% da capacidade $file"



echo "$body" | mail -s "$subject" "$destiny"

