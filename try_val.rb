# frozen_string_literal: true

def print_hello_world
  puts 'hello world.'
end
print_hello_world

# if
def try_if(num = 100)
  puts "num:#{num}"
  if num > 100
    puts 'num is bigger than 100'
  elsif num > 10
    puts 'num is bigger than 10'
  else
    puts 'num is less than 10'
  end
end
try_if(101)
try_if

def tryif2
  point = 7
  day = 1
  # 1日であればポイント5倍
  point *= 5 if day == 1
  p point
end
tryif2

def tryif3
  point = 7
  day = 1
  # 1日であればポイント5倍(if修飾子)
  point *= 5 if day == 2
  p point
end
tryif3

# unless
def try_unless(num = 50)
  puts "num:#{num}"
  if num == 50
    puts 'num is 50'
  else
    puts 'num is not 50'
  end
end
try_unless

class TryVal
  ConstantNumber = 200
  # global variable
  $globalnumber = 100
  def try_variable
    # local variable
    localnumber = 50
    puts "local number is [#{localnumber}]"
    puts "global number is [#{$globalnumber}]"
  end
end

# puts ConstantNumber # error
puts TryVal::ConstantNumber

tryval = TryVal.new
tryval.try_variable

# 文字列はStringクラスオブジェクト
puts 'abc'.class

# %記法で文字列を作る
# %q! !で囲むとシングルクォート
puts %q(He said, "Dont't speak.")

# %Q! !で囲むとダブルクォート
something = 'Hello'
puts %(He said, "#{something}")

# %! !も同様
something = 'Bye.'
puts %(He said, "#{something}")

# ?を区切り文字にする
puts %q(He said, "Don't speak.")

# {}を区切り文字にする
puts %q(He said, "Don't speak.")

# ヒアドキュメントは改行するだけ
puts "LINE 1
LINE 2
LINE 3"

# 識別子をあたえてもできる。TEXTじゃなくても良い、自由。
txt = <<~TEXT
  Foo.
  Bar.
TEXT
puts txt

# 識別子をあたえてもできる。TEXTじゃなくても良い、自由。
def some_method
  <<~TEXT
    Foo.Foo.Foo.Foo.Foo.Foo.
    Bar.Bar.Bar.Bar.Bar.Bar.
  TEXT
end
puts some_method

# 式展開もできる
name = 'Yosuke'
a = <<TEXT
  はじめまして #{name}さん.
  以下のメッセージをご覧ください.
TEXT
puts a

# upcaseなどStringクラスのメソッドも使える
a = <<~TEXT.upcase # downcaseも使える
  Hello, #{name}.
  Nice to meet you!
TEXT
puts a

# フォーマット
puts format('%0.3f', 1.5)

# キャスト
puts 123.to_s

# 配列を連結して文字列化
puts [10, 21, 33].join

# *演算子で繰り返し
puts 'Hi,' * 10

# 数値について

# 2進数 0b はじまり
puts 0b11111111

# 8進数 0 はじまり
puts 0o377

# 16進数 0x はじまり
puts 0xff

# ビット反転
puts (~0b11110000).to_s(2)

# 右ビットシフト
puts (0b01110000 >> 1).to_s(2)
# 左ビッ��シフト
puts (0b01110000 << 1).to_s(2)

# 数値クラス
puts 10.class
puts 1.5.class
# 有理数リテラル
r = 2 / 3r
puts r
puts r.class
# 複素数リテラル
c = 0.3 - 0.5i
puts c
puts c.class

# 真偽値と条件分岐
puts '--- &&確認 ---'
puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3
puts '--- ||確認 ---'
puts nil || false
puts false || nil
puts nil || false || 2 || 3

puts '--- 複合確認 ---'
true1 = true
true2 = true
false1 = false
puts true1 || true2 && false1 # true1 || (true2 && false1)
puts true1 or true2 and false1 # (true1 or true2) and false1
puts !false1 || true1 # !(false1) || true1
puts !false1 || true1 # not(false1 || true1)

# unless
# ifの反対
status = 'error'
puts '異常あり1' if status != 'ok'
puts '異常あり2' unless status == 'ok'
unless status == 'ok'
  message =
    '異常あ�������3'
end
puts message

# if elsif / case
country = 'japan'
message =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'hello!'
  elsif country == 'itary'
    'cuao'
  else
    '???'
  end
puts message
message =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello!!!'
  when 'itary'
    'ciao'
  else
    '???'
  end
puts message

# 三項演算子
n = 10
result = n >= 10 ? '10以上' : '10未満'
puts result
