# http://yukicoder.me/problems/no/64
f0, f1, n = gets.chomp.split(" ").map(&:to_i)
f_ary = Array.new
f_ary.push(f0); f_ary.push(f1)
f_ary.push(f_ary[0] ^ f_ary[1])

# 巡回する周期が3
# 88 79 23 88 79 23 ...
n = n % 3
puts f_ary[n]