#!/bin/bash

datas() {
	meses=("Janeiro" "Fevereiro" "Março" "Abril" "Maio" "Junho" "Julho" "Agosto" "Setembro" "Outubro" "Novembro" "Dezembro")

	semana=("Domingo" "Segunda-Feira" "Terça-Feira" "Quarta-Feira" "Quinta-Feira" "Sexta-Feira" "Sábado")
	
	dia=`date +%d`

	mes=`date +%m`

	ano=`date +%Y`

	ds=`date +%w`

	hora=`date +%H:%M:%S`

	echo "A data atual é $dia de ${meses[$mes - 1]} de $ano. ${semana[$ds]}."

	echo "A hora atual é $hora."
}

divisao() {
	if [ $2 -eq 0 ]; then
		echo "É impossível dividir por zero"
		return;
	fi

	echo $[$1 / $2]
}

linha() {
	echo "------------------------------------------------------------------------------"
}

div=`divisao 50 2`

datas

linha

echo $div.