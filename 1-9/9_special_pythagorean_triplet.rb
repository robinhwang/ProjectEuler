#特别的勾股数
#存在一个勾股数满足
#a**2 + b**2 = c**2
#a + b + c = 1000
#算出他们的乘积

(1...1000).each do |a|
  (1...1000).each do |b|
    sqrt = Math.sqrt(a**2+ b**2)
    if (sqrt.to_i==sqrt && (a + b + sqrt.to_i==1000))
      puts a*b*(1000-a-b)
    end
  end
end

