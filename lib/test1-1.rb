# encoding: utf-8

#コンバートするライブラリを読み込む
require "kconv"

print("utf8 = " +  Kconv.toutf8("こんにちは\n"))

print("sjis = " +  Kconv.tosjis("こんにちは\n"))

#オブジェクトの中身をみる
print("aaa".class)
