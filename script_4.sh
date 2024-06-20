#!/bin/bash


# Criando o arquivo bc com as instruções
cat << EOF > bc
scale=5
b=5
c=55
d=0.55
va1=(b * c)/d
var2=(c * d) / b
result=va1 + var2
result
EOF

# Executando o arquivo com bc e capturando o resultado
result=$(bc < bc)

# Mostrando o resultado
echo "O resultado é $result"

