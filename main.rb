# Declarations and initializations
operands = []
operators = []
ORDER = {"+" => 1, "-" => 1, "x" => 2, "/" => 2}

#
def do_math(operator, num_01, num_02)
    case operator
    when "+"
        num_01 + num_02
    when "-"
        num_01 - num_02
    when "x"
        num_01 * num_02
    when "/"
        num_01 / num_02
    end
end

#
def peek(stack)
    return stack[-1]
end

ARGV.each do |ops|
    if ORDER.has_key?(ops)
        # If ops is an operator
        operators.push(ops)
    else
        # If ops is an operand
        operands.push(ops)
    end
end

puts "operators", *operators
puts "operands", *operands