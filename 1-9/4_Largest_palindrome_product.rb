# P 4
#一个回文数从两边读都是一样的。
#根据两个两位数乘积所能制造的最大回文数是：9009 = 91 * 99.
#找出两个三位数乘积所能制造处的最大回文数。

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

def find_number
  a =[]
  999.downto(100).each do |x|
    999.downto(100).each do |y|
     a.push(x*y) if palindrome?(x*y)
    end
  end
  puts a.max
end

find_number

