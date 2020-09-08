# frozen_string_literal: false

# ガベージコレクションあり

# エイリアスメソッド
## lengthもsizeも同じ結果が得られる
puts 'hello'.length
puts 'hello'.size
puts '---'

# 式(Expression)と文(Statement)
## 式：値を返し、結果を変数に代入できるもの
## 文：値を返さず、変数に代入しようとするとシンタックスエラー
### Rubyのifやメソッドは式
a = # if文が値を返すので変数代入可
  if true
    '真'
  else
    '偽'
  end
puts a
b = def foo; end # メソッド定義はシンボルを返す
puts b
puts '---'

# 疑似変数, 代入不可
## nil, true, false
## オブジェクト自身
puts self
## 現在のソースファイル名
puts __FILE__
## 現在のソースファイル中の行番号
puts __LINE__
## 現在のソースファイルのスクリプトエンコーディング
puts __ENCODING__
puts '---'

# 参照
## Rubyの変数はオブジェクト参照
### 同じ文字列の別オブジェクトa, b
a = 'hello'
b = 'hello'
puts "a=#{a.object_id}"
puts "b=#{b.object_id}"
### cにbを代入, bとcは同じオブジェクト
c = b
puts "c=#{c.object_id}"
### メソッドの引数にcを渡し、メソッド内の変数dはcと同じオブジェクト
def delivery_object(d)
  "d=#{d.object_id}"
end
puts delivery_object(c)
puts a.equal?(b)
puts b.equal?(c)
puts '---'
### cに破壊的変更を加える
def change_upcase!(d)
  d.upcase!
end
change_upcase!(c)
# 同一オブジェクトのbも破壊的変更が掛かる
puts b
puts c
# aは別オブジェクトなので影響なし
puts a
puts '---'

# 標準ライブラリ, gem利用
## requireでライブラリ読み込み, Ruby実行ディレクトリが起点のパス
require 'Date'
puts Date.today
puts '---'
## 自前ライブラリ読み込みrequire .rbは省略できる
puts require './sample' # 初回読み込み, trueを返す, require_once
puts require './sample' # 2回目は読み込めない, falseが返る
puts '---'
## 自前ライブラリ読み込みload .rbは省略できない
puts load './sample.rb' # 無条件読み込み
## reqire_relative
require_relative './sample' # 自分のディレクトリからの相対パスで./sample.rbを読み込む
puts '---'

# puts, print, pメソッド
## puts 末尾に改行を加えて戻り値を出力する。文字列の改行コードは認識する。puts自身の戻り値はnil
puts "123\n456"
puts '---'
## print 末尾に改行を加えず戻り値を出力する。文字列の改行コードは認識する。print自身の戻り値はnil
print "123\n456"
puts '---'
## p 末尾に改行を加えて戻り値を出力する。オブジェクトをダブルクォートを加えて返す。
p "123\n456"
puts '---'
