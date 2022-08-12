#!/bin/bash
# Um grande uso de shell script consiste em passar parâmetros para a execução de scripts. Existem algumas variáveis especiais para isso:
# $0 -> Nome do script executando. $1 -> Primeiro parâmetro, $2 -> segundo parâmetro e assim seguimos. $# -> total de parâmetros passados e $* -> é uma forma de acessar todos os parâmetros recebidos de uma vez.

if [ $# -lt 1 ]
then
    echo "Passe pelo menos um parâmetro para esse script"
fi

i=0

for arg in $*;
do
    echo "Argumento $i = $arg"
        i=$(($i+1))
done
