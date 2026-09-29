# 数値計算の品質保証法
*Numerical Verification Methods*

著者：関根 晃太（Kouta Sekine）

[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

## 概要

本書は数値計算における品質保証法（Verified Numerics / Numerical Verification）を解説した日本語技術書です。
浮動小数点数の丸め誤差や連立一次方程式・固有値問題の誤差評価といった具体的な手法から、無限次元問題への応用を意識した関数解析的な理論まで、計算結果の信頼性を数学的に保証する方法を体系的に説明します。

## 目次

1. **浮動小数点数と区間演算**
2. **区間ベクトル/行列の演算に対する品質保証法**
3. **連立一次方程式の解の品質保証法**
4. **固有値問題の固有値に対する品質保証法**
5. **方程式の品質保証のための基本定理**
6. **射影を用いた無限次元線形問題の解法**
7. **無限次元非線形問題の解法のエッセンス〜$A$ が全単射の場合〜**

後書き（半線形楕円型偏微分方程式への応用）、索引

## PDF のダウンロード

最新版の PDF はリポジトリ内の [book.pdf](book.pdf) です。Zenodo（下記 DOI）からも入手できます。

## ビルド方法

LuaLaTeX と upmendex（索引の生成）が必要です。いずれも TeX Live に含まれています。

```bash
# latexmk を使う場合（.latexmkrc により索引の生成も自動で行われます）
latexmk -lualatex book.tex

# 手動で行う場合
lualatex book.tex
lualatex book.tex
upmendex -g -s book.ist -o book.ind book.idx   # 相互参照が確定した後に索引を生成
lualatex book.tex
```

同じ手順をまとめたスクリプト `tete.sh` も同梱しています（`bash tete.sh`）。

使用フォントは `HaranoAjiMincho` / `HaranoAjiGothic`（和文）、`Libertinus Serif`（欧文）、`Libertinus Math`（数式）です。
これらが環境にない場合は `book.tex` の `\setmainjfont` / `\setsansjfont` / `\setmainfont` / `\setmathfont` を適宜変更してください。

## 引用方法

下記の形式で引用してください。DOI は全バージョン共通のもの（常に最新版を指します）です。

```
Kouta Sekine. 数値計算の品質保証法 (Numerical Verification Methods). Zenodo, 2026.
https://doi.org/10.5281/zenodo.23007581
```

BibTeX:

```bibtex
@book{sekine2026numericalverification,
  author    = {Sekine, Kouta},
  title     = {数値計算の品質保証法},
  subtitle  = {Numerical Verification Methods},
  year      = {2026},
  publisher = {Zenodo},
  doi       = {10.5281/zenodo.23007581},
  url       = {https://doi.org/10.5281/zenodo.23007581}
}
```

## ライセンス

Copyright &copy; 2026 関根 晃太

本書は [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/) のもとで公開されています。

- **共有可**: 非営利目的であれば原文をそのまま複製・再配布できます。
- **改変禁止**: 本書を改変した二次著作物の配布は禁止されています。
- **商用利用禁止**: 商業目的での利用は禁止されています。
