#10以内所有质数的和是： 2 + 3 + 5 + 7 = 17.
#求2000000以内所有质数的和
require "prime"
a = []
Prime.each(Float::INFINITY) do |prime|
  if prime < 2_000_000
    a.push prime
  else
    break
  end
end
puts a.reduce(:+)