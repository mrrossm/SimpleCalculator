# Declarations and initializations
operands = []
operators = []
ORDER = {"+" => 1, "-" => 1, "x" => 2, "/" => 2}

ARGV.each do |n|
    puts n.class
end