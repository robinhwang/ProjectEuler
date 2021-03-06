#计算差
#前10个自然数的平方和是：
#12 + 22 + ... + 102 = 385
#前10个自然数的和的平方是：
#(1 + 2 + ... + 10)2 = 552 = 3025
#前10个自然数的和的平方减去前10个自然数的平方和为： 3025  385 = 2640.
#求前100个自然数的和的平方减去前100个自然数的平方和。
puts result = ((1..100).reduce(:+))**2 - (1..100).map {|x| x*x }.reduce(:+)