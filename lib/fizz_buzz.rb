# frozen_string_literal: true

def fizz_buzz(n)
  # n.to_s
  if (n % 15).zero?
    'Fizz Buzz'
  elsif (n % 3).zero?
    'Fizz'
  elsif (n % 5).zero?
    'Buzz'
  else
    n.to_s
  end
end
