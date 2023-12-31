# robosys2023

[![test](https://github.com/shirakawasojyu/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/shirakawasojyu/robosys2023/actions/workflows/test.yml)
ロボットシステム学の練習用リポジトリです.

# plusコマンド

## 目的
・標準入力から読み込んだ数字を足し算し,2進数への変換とbit数表記をするソフトです.   
・足し算結果, 2進数, bit数の順に表示されます.

## ダウンロード方法
*以下を端末で実行する
```
$ git clone https://github.com/shirakawasojyu/robosys2023.git
$ cd robosys2023
```
## 使用例

```
例①
/robosys2023$ seq 5 | ./plus
15, 1111, 4

例②
/robosys2023$ echo 512 256 256 > nums
/robosys2023$ cat nums | tr ' ' '\n' | ./plus
1024, 10000000000, 11
```

## 注意点
2進数を用いる都合上,自然数のみ入力してください.  

## ソフトウェア
・Python  
	テスト済み： ver3.7 ~ 3.10

## テスト環境
・Ubuntu 22.04.2

# ライセンス
・このパッケージのコードは,下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作としたものです.  
https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022  
・このソフトウェアパッケージは3条項BSDライセンスの下,再頒布及び使用が許可されます.  
・©2023 shirakawasojyu
