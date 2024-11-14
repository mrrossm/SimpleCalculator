# This program strictly accepts operands formatted in:
# "a + b * c", there must be spaces in between.
# Probably buggy and limited, but it works with the four basic operations
# + - *(x here) /

# Declarations and initializations
operands = []
operators = []
ORDER = {"+" => 1, "-" => 1, "x" => 2, "/" => 2}

# Arithmetic
def do_math(operator, num_01, num_02)
    case operator
    when "+"
        num_01.to_i + num_02.to_i
    when "-"
        num_01.to_i - num_02.to_i
    when "x"
        num_01.to_i * num_02.to_i
    when "/"
        num_01.to_i / num_02.to_i
    end
end

# Peek at the last item of the operands
def peek(stack)
    return stack[-1]
end

# Appropriately populate operators and operands
# as well as doing calculations if needed
ARGV.each do |ops|
    if ORDER.has_key?(ops)
        # If ops is an operator
        if operators.empty? or (ORDER[ops] >= ORDER[peek(operators)])
            operators.push(ops)
        else
            operands.push(do_math(operators.pop, operands.pop, operands.pop))
            operators.push(ops)
        end
    else
        # If ops is an operand
        operands.push(ops)
    end
end

# Do the remaining operations from the operators stack
while !operators.empty?
    operands.push(do_math(operators.pop, operands.pop, operands.pop))
end

puts "The answer is #{operands[0]}."