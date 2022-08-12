#!/bin/bash
# Acima nós especificamos o caminho para um interpretador de shell script, nesse caso, o bash
# Para adicionar comandos no shell nós utilizamos o #

# Para declarar uma variável em shell basta fazermos nome_da_variavel=valor
# Não pode haver um espaço entre o nome da variável e o operador de atribuição e o valor.
# Shell é uma linguagem fracamente tipada
var1=100
var2="Linux"

# Para acessarmos o valor de alguma variável usamos o operador $
echo "O valor de \$var1 é $var1"
echo "O valor de \$var2 é $var2"

# Como no shell nós podemos executar os comandos que nós digitamos normalmente no terminal ao longo do próprio script, existe uma forma de guardamos a saída de comandos em variáveis usando a notação $()
cmd1=$(whoami)
cmd2=$(uptime -p)

echo "O valor de \$cmd1 é $cmd1"
echo "O valor de \$cmd2 é $cmd2"

# Com o comando read podemos ler dados da entrada padrão
echo "Digite um número"
read num;
echo "O número que você digitou foi $num"

# O if no shell tem suas particularidades. Segue um exemplo de uso
if [ $num -gt 0 ];
then
    echo "$num é maior que 0"
elif [ $num -eq 0 ]
then
    echo "$num é igual a 0"
else
    echo "$num é menor que 0"
fi


