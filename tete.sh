texfiles=`find *.tex`

for e in ${texfiles[@]};do
	if [ ${e} != "commands.tex" ];then
		echo ${e}
		lualatex ${e}
		lualatex ${e}
		# 索引(book.tex のみ): 相互参照が確定した後の .idx から upmendex で .ind を生成
		if [ -f ${e%.tex}.idx ];then
			upmendex -g -s book.ist -o ${e%.tex}.ind ${e%.tex}.idx
		fi
		lualatex ${e}

	fi
done
