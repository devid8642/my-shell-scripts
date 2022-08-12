#!/bin/bash

fat() {
    echo "Digite um número"
    read x;
    result=1;


    for i in $(seq 2 $x);
    do
        result=$(($result*$i));
    done
    
    echo "O valor do fatorial de $x é $result"
}

while true
do
    clear
    echo "Selecione uma opção:"
    echo "1 - Exibir a quanto tempo está máquina está ligada"
    echo "2 - Exibir o kernel do sistema"
    echo "3 - Exibir a distribuição que roda nesta máquina"
    echo "4 - Testas o for no shell script kkk"
    echo "5 - Calcular o fatorial de um número"
    echo "Digite qualquer outro número para sair"
    read op;

    if [ $op == "1" ];
    then
        echo ""
        echo "Tempo em que a máquina está ligada: $(uptime -p)"
        echo ""
        echo "Pressione enter para continuar"
        read go;
    elif [ $op == "2" ];
    then
        echo ""
        echo "Kernel: $(uname -r)"
        echo ""
        echo "Pressione enter para continuar"
        read go;
    elif [ $op == "3" ];
    then
        echo ""
        echo "Distribuição Linux: $(cat /etc/os-release)"
        echo ""
        echo "Pressione enter para continuar"
        read go;
    elif [ $op == "4" ]
    then
        echo ""

        echo "Digite um número para inicar a sequência"
        read a1;
        echo "Digite um para ser a razão dessa sequência"
        read r;
        echo "Digite um número para ser o fim dessa sequência"
        read an;
        echo ""

        for i in $(seq $a1 $r $an);
        do
            echo "$i"
        done

        echo ""

        echo "Pressione enter para continuar"
        read go;
    elif [ $op == "5" ]
    then
        echo ""

        fat

        echo ""

        echo "Pressione enter para continuar"
        read go;
    else
        break
    fi
done

echo ":)"
