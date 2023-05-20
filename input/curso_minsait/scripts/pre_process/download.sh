#!/bin/bash

declare -A arquivo_raw
arquivo_raw[1]="categoria"
arquivo_raw[2]="cidade"
arquivo_raw[3]="cliente"
arquivo_raw[4]="estado"
arquivo_raw[5]="filial"
arquivo_raw[6]="item_pedido"
arquivo_raw[7]="parceiro"
arquivo_raw[8]="produto"
arquivo_raw[9]="subcategoria"

cd ../../raw/

for (( c=1; c<=9; c++ ))
do
    mkdir ${arquivo_raw[${c}]}
    cd ${arquivo_raw[${c}]}
    curl -0 https://raw.githubusercontent.com/caiuafranca/dados_curso/main/${arquivo_raw[${c}]}.csv > ${arquivo_raw[${c}]}.csv
    cd ../
done