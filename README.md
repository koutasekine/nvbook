# 数値計算の品質保証法
*Numerical Verification Methods*

著者：関根 晃太（Kouta Sekine）

[![License: CC BY-NC-ND 4.0](https://img.shields.io/badge/License-CC%20BY--NC--ND%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc-nd/4.0/)

## 概要

本書は数値計算における品質保証法（Verified Numerics / Numerical Verification）を解説した日本語技術書です。
浮動小数点数の丸め誤差や連立一次方程式・固有値問題の数値計算結果の誤差の評価から無限次元問題への応用を意識した関数解析的な理論まで、数値計算結果の信頼性を数学的に保証する手法を体系的に説明します。

## 目次

1. **浮動小数点数と区間演算**
2. **区間ベクトル/行列の演算に対する品質保証法**
3. **連立一次方程式の解の品質保証法**
4. **固有値問題の固有値に対する品質保証法**
5. **方程式の品質保証のための基本定理**
6. **射影を用いた無限次元線形問題の解法**
7. **無限次元非線形問題の解法のエッセンス〜$A$ が全単射の場合〜**

## PDF のダウンロード

最新版の PDF は [Releases](../../releases) ページから入手できます。

## ビルド方法

LuaLaTeX と BibTeX が必要です。

```bash
# 通常のビルド（相互参照のため2回実行）
lualatex book.tex
lualatex book.tex

# 参考文献を含む場合
bibtex book
lualatex book.tex
lualatex book.tex
```

使用フォントは `HaranoAjiMincho`（和文）および `Libertinus Serif`（欧文・数式）です。
これらが環境にない場合は `book.tex` の `\setmainjfont` / `\setmainfont` / `\setmathfont` を適宜変更してください。

## 引用方法

Zenodo の DOI が付与されている場合は、下記の形式で引用してください（DOI は公開後に更新します）。

```
Kouta Sekine. 数値計算の品質保証法 (Numerical Verification Methods). Zenodo, 2026.
https://doi.org/10.5281/zenodo.XXXXXXX
```

BibTeX:

```bibtex
@book{sekine2026numericalverification,
  author    = {Sekine, Kouta},
  title     = {数値計算の品質保証法},
  subtitle  = {Numerical Verification Methods},
  year      = {2026},
  publisher = {Zenodo},
  doi       = {10.5281/zenodo.XXXXXXX},
  url       = {https://doi.org/10.5281/zenodo.XXXXXXX}
}
```

## ライセンス

Copyright &copy; 2026 関根 晃太

本書は [Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License (CC BY-NC-ND 4.0)](https://creativecommons.org/licenses/by-nc-nd/4.0/) のもとで公開されています。

- **共有可**: 非営利目的であれば原文をそのまま複製・再配布できます。
- **改変禁止**: 本書を改変した二次著作物の配布は禁止されています。
- **商用利用禁止**: 商業目的での利用は禁止されています。
