#!/bin/bash

banner()
{
echo
echo '##    ## ##     ## ##     ##  #######  ########     ##    ######          ##      ##   #####   ########  ########  ##          ##    ######  ######## '
echo '###   ## ##     ## ###   ### ##     ## ##     ##  ####   ##    ##         ##  ##  ##  ##   ##  ##     ## ##     ## ##        ####   ##    ##    ##    '
echo '####  ## ##     ## #### ####        ## ##     ##    ##   ##               ##  ##  ## ##     ## ##     ## ##     ## ##          ##   ##          ##    '
echo '## ## ## ##     ## ## ### ##  #######  ########     ##   ##       ####### ##  ##  ## ##     ## ########  ##     ## ##          ##    ######     ##    '
echo '##  #### ##     ## ##     ##        ## ##   ##      ##   ##               ##  ##  ## ##     ## ##   ##   ##     ## ##          ##         ##    ##    '
echo '##   ### ##     ## ##     ## ##     ## ##    ##     ##   ##    ##         ##  ##  ##  ##   ##  ##    ##  ##     ## ##          ##   ##    ##    ##    '
echo '##    ##  #######  ##     ##  #######  ##     ##  ######  ######           ###  ###    #####   ##     ## ########  ########  ######  ######     ##    '
echo
echo "Use: ./Num3r1c-W0rdL1st.sh NumeroInicial NumeroFinal Quant-de-caracteres"
echo
echo "exemplo: ./Num3r1c-W0rdL1st.sh 1 20 2"
echo
echo '  _                             _             __             '
echo ' /  ._ _   _| o _|_  _   _ o   |_) | |_|_ _| (_   _ |_|_ ._  '
echo ' \_ | (/_ (_| |  |_ (_) _> o   |_) |   | (_| __) (_   |  | | '
echo
echo -e "\e[1;37mLivre uso e modificacao, mantenha os creditos em comentario.\e[0m"
echo -e "\e[1;31mPs: Nao faca teste em dominios sem permissao\e[0m"
}

# Verifica se todos os três argumentos foram passados
if [ $# -lt 3 ]; then
  banner
  exit 1
fi

echo "Gerando WordList"

Nini=$1
Nfin=$2
Digits=$3

for ((n=Nini; n<=Nfin; n++)); do
    printf -v padded "%0${Digits}d" "$n"
    echo "$padded" >> wordlist.txt
done
