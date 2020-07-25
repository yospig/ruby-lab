def print_HelloWorld
    puts "hello world."
end
print_HelloWorld

# if
def try_if(num = 100)
    if num > 100
        puts "num is bigger than 100"
    elsif num > 10
        puts "num is bigger than 10"
    else
        puts "num is less than 10"
    end
end
try_if(101)

# unless
def try_unless(num = 100)
    unless num == 100
        puts "num is not 100"
    else
        puts "num is 100"
    end
end
try_unless()

class TryVal
    ConstantNumber = 200
    # global variable
    $grobalnumber = 100
    def try_variable
        # local variable
        localnumber = 50
        puts "local number is [#{localnumber}]"
        puts "global number is [#{$grobalnumber}]"
    end
end

# puts ConstantNumber # error
puts TryVal::ConstantNumber

tryval = TryVal.new
tryval.try_variable