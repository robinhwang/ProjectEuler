#2 Even Fibonacci numbers
#每一个新的fibo数列都是由前两数相加而成。如果由1，2开始，那么这个数列的前十个数字就是： 
#1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#那么，一个最大数不超过400万的 fibo 数列，算出其中所有偶数项的和。
def fibo(n)
  return n if (0..1).include? n
  fibo(n-1) + fibo(n-2)
end

cache = {}
#use 2.0 Enumerable#lazy maybe better
puts (1..Float::INFINITY).take_while{|n| cache[n] = fibo(n); cache[n] < 4_000_000}.select{|n| cache[n].even?}.map{|n| cache[n]}.reduce :+
