# mdline
[![test](https://github.com/I-Hara-0217/robosys2025/actions/workflows/test.yml/badge.svg)](https://github.com/I-Hara-0217/robosys2025/actions/workflows/test.yml)

標準入力からテキストを読み込み、Markdownの箇条書きリスト形式（行頭にハイフン）に変換して出力するコマンドです。

## インストール方法
以下のコマンドを入力してください。

```
$git clone [https://github.com/I-Hara-0217/robosys2025.git$](https://github.com/I-Hara-0217/robosys2025.git$)
```

```
&cd robosys2025
```

## 実行例

例1:文字列を入力する場合

入力

```
$ echo "Apple" | ./mdline
```

出力

```
- Apple
```

例2:複数行入力する場合

入力

```
$ echo -e "Apple\nOrange\nBanana" | ./mdline
```

出力

```
- Apple
- Orange
- Banana
```

例3:空行を含む場合(空行はスキップされます)

入力

```
$ echo -e "Apple\n\nBanana" | ./mdline
```

出力
```
- Apple
- Banana
```

例4: ファイルの中身を変換して保存する

入力

```
$ cat list.txt | ./mdline > list.md
```

例5:既存のファイルに追記する

入力

```
$ cat list.txt | ./mdline >> README.md
```

## 必要なソフトウェア
- Python
  - テスト済み: 3.7〜3.10

- Ubuntu 24.04.1

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．

## 謝辞

- このパッケージのディレクトリ構成やテスト方法は、千葉工業大学 ロボットシステム学(2025)の講義資料を参考にしています。
    - [ryuichiueda/slides_marp/robosys2025]()https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025

- © 2025 Ibuki Hara

 


