gets
m = gets.chomp.split(" ").map(&:to_i)

m.sort!
min = -1
(m.length-1).times do |i|
  ary = m[i, 2]

  next if ary[0] == ary[1]
  d = (ary[0] - ary[1]).abs
  min = d if min == -1
  min = d if d < min
end

if min == -1
  puts 0
else
  puts min
end
