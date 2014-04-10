def Rfactorial(n)
  return n if n == 1 || n == 0
  return nil if n < 0
  return n * Rfactorial(n-1)
end

def Ifactorial(n)
  return nil if n < 0
  total = 1
  while n > 1
    total *= n
    n -= 1
  end
  return total
end

puts "Test Recursive Factorial: "
puts "-3! : #{Rfactorial(-3) || "nil"} == nil : #{Rfactorial(-3) == nil}"
puts "3! : #{Rfactorial(3)} == 6      : #{Rfactorial(3) == 6}"
puts "1! : #{Rfactorial(1)} == 1      : #{Rfactorial(1) == 1}"

puts "Test Iterative Factorial: "
puts "-3! : #{Ifactorial(-3) || 'nil'} == nil : #{Ifactorial(-3) == nil}"
puts "3! : #{Ifactorial(3)} == 6      : #{Ifactorial(3) == 6}"
puts "1! : #{Ifactorial(1)} == 1      : #{Ifactorial(1) == 1}"
