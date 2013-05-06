# 3.最大的素数约数
# 13195的素数约数是5，7，13，29    
# 那么600851475143最大的素因数是？

def find_big_num(x)
  i = x/2
  (2..i).each {|n| return find_big_num(x/n) if x%n == 0}
  return x
end
puts find_big_num(600851475143)