# Declarations and initializations
operands = []
operators = []
ORDER = {"+" => 1, "-" => 1, "x" => 2, "/" => 2}

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