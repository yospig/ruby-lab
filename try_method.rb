# frozen_string_literal: false

# メソッド名は変数と同じくスネークケース
def add(a, b)
  a + b
end
puts add(1, 2)

# 数字始まりはエラー
# def 2_add(a, b)
#     a + b
# end

def greeting(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
puts greeting('japan')
puts greeting('us')

def greeting2(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは2'
  else
    'hello'
  end
end
puts greeting2(nil)
puts greeting2('japan')

def greeting3
  'こんにちは3'
end
puts greeting3

# 引数の数量固定
def greeting4(country)
  if country == 'japan'
    'こんにちは4'
  else
    'Hello4'
  end
end
# greeting4 # 引数足りないエラー
puts greeting4('us')
# greeting4('japan', 'us') # 引数多いエラー

# デフォルト値付き引数
def greeting5(country = 'japan')
  if country == 'japan'
    'こんにちは5'
  else
    'Hello5'
  end
end
puts greeting5 # デフォルト引数利用
puts greeting5('us')

# デフォルト引数応用
def default_args(a, b, c = 0, d = 0)
  "a=#{a} b=#{b} c=#{c} d=#{d}"
end
puts default_args(1, 2)
puts default_args(1, 2, 3)
puts default_args(1, 2, 3, 4)

# 動的デフォルト引数
def foo(time = Time.now, message = bar)
  puts "time=#{time} message=#{message}"
end

def bar
  'BAR&BAR'
end
foo
puts '---'

# ?で終わるメソッドは真偽値を返す
# 空文字でtrue, そうでなければfalse
puts ''.empty?
puts 'aaa'.empty?
puts '---'
# 引数の文字列が含まれていればtrue, そうでなければfalse
puts 'watch'.include?('atc')
puts 'watch'.include?('xxx')
puts '---'
# 奇数ならtrue
puts 5.odd?
puts 6.odd?
puts '---'
# 偶数ならtrue
puts 8.even?
puts 9.even?
puts '---'
# オブジェクトがnilならtrue
puts nil.nil?
puts 'abc'.nil?
puts 100.nil?
puts '---'
# 自分で真偽値を返すメソッドを定義
def multiple_of_three?(n)
  n % 3 == 0
end
puts multiple_of_three?(4)
puts multiple_of_three?(5)
puts multiple_of_three?(6)
puts '---'

# !で終わるメソッドは注意が必要。破壊的メソッドだったり。
a = 'Ruby'
# upcaseだと元変数は変化しない
puts a.upcase
puts a
# upcase!だと元変数には快適変更を与える
b = 'Ruby'
puts b.upcase!
puts b
puts '---'
# 自分で!付きメソッドを定義
def reverse_upcase!(s)
  s.reverse!.upcase!
end
puts reverse_upcase!('Hello-World')
# !つけないバージョン。ただ付けることができるだけで挙動はメソッド内の処理に依存する…?
def reverse_upcase(s)
  s.reverse!.upcase!
end
puts reverse_upcase('Hello-World')
puts '---'
