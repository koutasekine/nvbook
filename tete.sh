texfiles=`find *.tex`

for e in ${texfiles[@]};do
	if [ ${e} != "commands.tex" ];then
		echo ${e}
		platex ${e}
		platex ${e}
		dvipdfmx ${e//.tex/.dvi}

	fi
done
