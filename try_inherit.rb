# frozen_string_literal: true

class Human
  def eat
    puts 'たべます'
  end

  def sleep
    puts 'ねむい'
  end
end

# Inherit
# Humanクラス継承
class Programmer < Human
  def work
    puts 'コード書く'
  end

  # Override
  def eat
    puts 'PC前で片手間にたべる'
  end
end

programmer = Programmer.new
programmer.work
programmer.eat
programmer.sleep
puts '---'

# Super
# スーパークラスのメソッド呼び出し
class Driver < Human
  def sleep
    super
    puts 'けど、寝たくても運転中'
  end
end

driver = Driver.new
driver.sleep
puts '---'

# superclass
# スーパークラス名取得
puts Driver.superclass
puts '---'

# is_a?
# 継承元クラスの判定
programmer = Programmer.new
puts programmer.is_a? Human
puts '---'
