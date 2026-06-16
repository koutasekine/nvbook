# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Response policy

* 出力は日本語
* 変更理由を簡潔に説明

## Project overview

数値計算の品質保証法に関する日本語技術書（著者：関根 晃太）のLaTeXプロジェクト。`jbook` ドキュメントクラスを使用。

## Build commands

```bash
# メインファイルのコンパイル（相互参照のため2回実行）
platex book.tex
platex book.tex

# 参考文献を含む場合
bibtex book
platex book.tex
platex book.tex

# PDF生成
dvipdfmx book.dvi

# 全 .tex ファイルを一括ビルド（commands.tex を除く）
bash tete.sh
```

## File structure

- `book.tex` — メインファイル。`jbook` クラス、日本語組版
- `commands.tex` — カスタムマクロ定義（`\input{commands.tex}` で読み込まれる）
- `ref.bib` — BibTeX 参考文献データベース
- `figs/` — 図ファイル（EPS・PDF形式）
- `tete.sh` — 全 `.tex` ファイルを一括ビルドするシェルスクリプト

## Key conventions

- 数式マクロは `commands.tex` に集約されており、`book.tex` に直書きしない
- 図は EPS 形式で `figs/` に配置し、`\includegraphics` で参照
- 定理環境は `commands.tex` で定義済み（`Thm`・`Lem`・`Cor`・`Rem`・`Prop`・`defi`）
- 区間演算の記法は `commands.tex` のマクロ（`\IR`・`\intval{}`・`\midrad{}{}`等）を使う

## Book structure (chapters)

1. 浮動小数点数と区間演算
2. 以降は `book.tex` 内の `\chapter` を参照
