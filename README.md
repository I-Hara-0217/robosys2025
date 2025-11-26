# mdline
[![test](https://github.com/I-Hara-0217/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/I-Hara-0217/robosys2025/actions/workflows/test.yml)

標準入力からテキストを読み込み、Markdownのリスト形式（行頭にハイフンなど）に変換して出力するコマンドです。
通常の箇条書きに加え、オプションで番号付きリストやチェックボックスリストへの変換もサポートしています。

## インストール方法
以下のコマンドを入力してください。

```
$git clone [https://github.com/I-Hara-0217/robosys2025.git$](https://github.com/I-Hara-0217/robosys2025.git)
```

```
$cd robosys2025
```

## 実行例

例1:標準入力から文字列を渡すと、行頭にハイフンをつけて出力します。

入力

```
$ echo "Apple" | ./mdline
```

出力

```
- Apple
```

例2:改行を含むテキストも一行ずつリスト化します。空行は自動的にスキップされます。


```
$ echo -e "Apple\nOrange\n\nBanana" | ./mdline
```

出力

```
- Apple
- Orange
- Banana
```

例3:-n をつけると、連番のリストに変換します。空行は自動的にスキップされます。

入力

```
$ echo -e "First step\nSecond step" | ./mdline -n
```

出力
```
1. First step
2. Second step
```

例4:-c をつけると、チェックボックス形式に変換します。空行は自動的にスキップされます。

入力

```
$ echo -e "Buy milk\nWalk the dog" | ./mdline -c
```

出力
```
- [ ] Buy milk
- [ ] Walk the dog
```

例5:既存のテキストファイルをMarkdownのリストに変換して保存する例です。

入力

```
$ cat list.txt | ./mdline -c > shopping_list.md
```

例6:既存ファイルへの追記の例です。

入力

```
$ cat list.txt | ./mdline >> README.md
```

## 必要なソフトウェア
- Python
  - テスト済み: 3.7〜3.10

- Ubuntu 24.04.1 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

- © 2025 Ibuki Hara

## 謝辞

- このパッケージのディレクトリ構成やテスト方法は、千葉工業大学 ロボットシステム学(2025)の講義資料を参考にしています。
    - [ryuichiueda/slides_marp/robosys2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)



 


