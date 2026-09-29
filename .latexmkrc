# 索引: latexmk が .idx を検出したら upmendex(日本語対応)で .ind を生成する
$makeindex = 'upmendex -g -s book.ist -o %D %S';
