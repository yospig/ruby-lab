# initialize
# =コンストラクタ
class Human
    # class valiable
    @@personal_number = 0

    # class instance valiable
    @instance_number = 10

    # full accessor
    attr_accessor :name, :age
    # getter
    attr_reader :address
    # setter
    attr_writer :employee_number

    def initialize name, age = 25
        # member valiable
        @name = name
        @age = age
        @@personal_number = @@personal_number + 1
        self.prpr
        prpr
        puts "can't read instance val [#{@instance_number}] in Initialize" # can't read
    end

    # class_method(static method)
    def self.personal_count
        puts "Humanクラスのクラスメソッドcall"
        puts @@personal_number
        puts "can read instance val [#{@instance_number}] in ClassMethod" # can read
    end

    # private
    private
    def prpr
        puts "privateメソッドcall"
    end
end
person = Human.new("Suzuki")
puts "なまえは#{person.name} #{person.age}歳"

person.name = "Sato"
person.age = 20
puts "変更後のなまえは#{person.name} #{person.age}歳"

Human.personal_count

# person.prpr