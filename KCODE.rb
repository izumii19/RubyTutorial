# encoding: utf-8

#現在の文字コード確認
puts "これは日本語で書いています"
#Ruby1.9から$KCODEは使わなくなったらしい
#print("KCODE=", $KCODE)
puts Encoding.default_external
