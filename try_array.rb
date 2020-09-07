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
