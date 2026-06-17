texfiles=`find *.tex`

for e in ${texfiles[@]};do
	if [ ${e} != "commands.tex" ];then
		echo ${e}
		lualatex ${e}
		lualatex ${e}

	fi
done
