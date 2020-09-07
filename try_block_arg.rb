# frozen_string_literal: true

# block arg pattern 1
def block_method1
  yield
end

block_method1 do
  puts 'Try block 1'
end

# block arg pattern 2
def block_method2(&block)
  block.call
end

block_method2 do
  puts 'Try block 2'
end

# try block arg 1
def block_try1(num, &block)
  block.call
  puts "do second. num is [#{num}]"
end

block_try1(100) do
  puts 'do first'
end

# try block arg 2
def block_try2(num)
  yield
  puts "do fourth. num is [#{num}]"
end

block_try2 200 do
  puts 'do third'
end

# Proc
# Proc is block to object
proc_do1 = proc do |str|
  puts "do proc trial [#{str}]"
end

proc_do1.call('proc arg')

# lambda
# It's similar to Proc.
lambda = lambda do |str|
  puts "do lambda [#{str}]"
end

lambda.call('lambda arg')
