# P 5
#2520是可以被1到10整除的最小数
#能被1到20整除的最小正数是？

# the cool one-line version
puts num = (1..20).inject { |result, n| result.lcm n }

#require "prime"
#num = (1..20).select{|x| Prime.prime?(x) }.inject(1) {|sum, n| sum *= n }
#1.#puts num * 2**(4-1) * 3**(2-1)

#2.# more auto-able
#def the_one(num)
# (1..20).each {|x| return false if num % x != 0}
# true
#end
#try_more = 1
#k = num
#while true
# if the_one(k)
#   puts "#{k}"
#   break
# else
#   try_more += 1
#   k = num*try_more
# end
#end


