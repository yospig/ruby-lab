# frozen_string_literal: true

# array definition
array01 = %w[hoge foo var hage]
array02 = []
array03 = Array.new(3, 'test')

p array01
# multiple
p array01[1..3]
p array02
p array03

# last element
p array01[-1]
array04 = %w[A B C]
# add
p array04[4] = 'E' # ["A", "B", "C", nil, "E"]
# add
p array04 << 'F' << 'G' # ["A", "B", "C", nil, "E", "F", "G"]
# not exist
p array04[100] # nil
array05 = %w[A B C D E F]
# without after element(without 2)
p array05[0...2]
# start, length args
p array05[1, 3]
# isEmpty
p array05.empty? # false

array01.each do |hoge|
  p "output [#{hoge}]"
end

# 空配列
p [].class
p []
puts '---'

# 要素が格納された配列
p [1, 2, 3]
puts '---'

# 要素はどんなオブジェクトでも良い, 混合でも
p [1, 'apple', 2, 'orrange', 3, 'melon'].class
p a = [1, 'apple', 2, 'orrange', 3, 'melon']
p a[0] # 1
p a[3] # 'orrange'
p a[-1] # -1は末尾 'melon'
p a[100] # 存在しないキ���はnil
# 要素の削除はdelete at
a.delete_at(4)
p a
puts '---'

# 配列の多重代入
## divmod：商と余りを配列で返す
p 14.divmod(3) # 4あまり2を [4, 2]と返す
quotient, remainder = 14.divmod(3)
p "quotient is #{quotient}, remainde is #{remainder}"
puts '---'

# 配列の繰���返し処理
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  p sum += n
end
puts '---'

# 配列の要素を削除(eachを使わない)
numbers.delete(2) # 値が2の要素を削除
p numbers
puts '---'

# 奇数の要素を削除
a = [1, 2, 3, 4, 5, 6, 7, 8]
a.delete_if do |n| # ブロックの戻り値がtrueであればdeleteする
  n.odd?
end
p a
puts '---'

# ブロック引数は何でも良い
a.each do |i|
end
a.each do |hoge|
end
numbers_count = 0
a.each do # 使わないなら省略も可
  numbers_count += 1
end
p numbers_count
puts '---'

# 改行なしのブロック
# sum = 0
# numbers.each do |n| sum += n end
# p sum
puts '---'

# do endのかわりにカッコでブロック表現
## なおブロック内が��数行の場合はdo end, ワンライナーは{}と使い分けるケースが多い
sum = 0
numbers.each { |n| sum += n }
p sum
puts '---'

# eachとmap(エイリアスcollect)
numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 } # eachで回��て10倍した要素を空配列に格納
p new_numbers
new_numbers = numbers.map { |n| n * 10 } # ブロックの戻り値が配列の要素になる
p new_numbers
puts '---'

# select(エイリアスfind_all)とreject
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? } # ブロックの戻り値がtrueの値を集めて返す
p even_numbers
odd_numbers = numbers.reject { |n| n.even? } # rejectはselectの逆でブロックの戻り値がfalseの値を集めて返す
p odd_numbers
puts '---'

# find(エイリアスdetect)
numbers = [1, 2, 3, 4, 5, 6]
min_even_number = numbers.find { |n| n.even? } # ブロックの戻り値がtrueの値の最初の結果を返す
p min_even_number
min_even_number = numbers.detect { |n| n.even? } # detectはfindエイリアスなので結果は同一
p min_even_number
puts '---'

# inject(エイリアスreduce)
## たたみ込み演算を行なうメソッド
numbers = [1, 2, 3, 4]
inject_sum = numbers.inject(0) { |result, n| result + n } # injectの引数をブロック第一変数のresultに入り、移行はブロックの戻り値がresultに格納され再起実行
p inject_sum
## 文字列でも可能
week_days = %w[Mon Tue Wed Thu Fri Sat].inject('Sun') { |result, n| result + n }
p week_days
puts '---'

# &とシンボル
p %w[ruby java perl].map { |s| s.upcase }
## &:で書き換えられる
p %w[ruby java perl].map(&:upcase)
p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
## &:で書き換えられる
p [1, 2, 3, 4, 5, 6].select(&:odd?)
## ブロック引数が1つ、ブロック内で引数無しのメソッドの呼び出し1回のみのときに「&:メソッド」を使える
puts '---'

# Range
## 範囲オブジェクト
p (1..5).class
range = 1..5 # 末尾を含む 1以上5以下
p range.include?(0) # false
p range.include?(4.9) # true
p range.include?(5) # true
range = 1...5 # 末尾を含まない 1以上5未満
p range.include?(0) # false
p range.include?(4.9) # true
p range.include?(5) # false
puts '---'

## 範囲オブジェクトを直接使ってメソッド呼び出すときはカッコで囲む
# p 1...5.include?(1) # undefined method `include?' for 5:Integer (NoMethodError)
p (1...5).include?(1) # true
puts '---'

## 配列や文字列の一部を抜き出す
a = [1, 2, 3, 4, 5]
p a[1..3]
s = 'abcdefg'
p s[1..3]
puts '---'

## 範囲の判定
### 不等号で判定
def liquid_1?(temperature)
  0 <= temperature && temperature < 100
end
p liquid_1?(-1)
p liquid_1?(0)
p liquid_1?(99)
p liquid_1?(100)
puts '---'
### 範囲オブジェクトで判定
def liquid_2?(temperature)
  (0...100).include?(temperature)
end
p liquid_2?(-1)
p liquid_2?(0)
p liquid_2?(99)
p liquid_2?(100)
puts '---'

### case利用
def charge(age)
  case age
  when 0..5
    '$0'
  when 6..12
    '$3'
  when 13..20
    '$6'
  else
    '$10'
  end
end
p charge(5)
p charge(12)
p charge(20)
p charge(25)
puts '---'

### 配列化する
p 1..5
p (1..5).to_a
p (1...5).to_a
p ('a'..'f').to_a
#### splat展開
p [*1..5] # (1..5).to_aと同じ
puts '---'

### 繰り返し処理
#### 範囲オブジェクト > 配列 > each
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
p sum # 1 + 2 + 3 + 4
#### 範囲オブジェクトまま > each
sum = 0
(1..4).each { |n| sum += n }
p sum # 1 + 2 + 3 + 4
#### stepで値を増やす間隔を指定できる
numbers = []
##### 1-10まで2つ飛ばし
(1..10).step(2) { |n| numbers << n }
p numbers # [1, 3, 5, 7, 9]
puts '---'
