# Declarations and initializations
operands = []
operators = []
ORDER = {"+": 1, "-": 1, "x": 2, "/": 2}

# To number tranlator
def turn_num(*numbers)
    numbers.each do |n|
        # What do if n is an operator
        if true
            puts "this is an operator"
        else
            puts "this is an operand"
        end
    end
end

turn_num(ARGV)

