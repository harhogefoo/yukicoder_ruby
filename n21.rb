n = gets.to_i
k = gets.to_i
ary = Array.new
n.times do
  ary.push(gets.to_i)
end
ary.sort!
puts ary[-1] - ary[0]
