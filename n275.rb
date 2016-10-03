# 中央値を求める
n = gets.to_i
ary = gets.chomp.split(" ").map(&:to_i)
ary.sort!
if n % 2 == 0
  p1 = n / 2
  p2 = p1 - 1
  puts (ary[p1] + ary[p2]) / 2.0
else
  p = n / 2
  puts ary[p]
end
