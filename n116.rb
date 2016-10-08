gets
a = gets.chomp.split(" ").map(&:to_i)

N = 3

count = 0
(a.length - N + 1).times do |i|
  origin = a[i, N]
  next if origin[0] == origin[1] || origin[0] == origin[2] || origin[1] == origin[2]

  ary = a[i, N].sort
  count += 1 if origin[0] == ary[1] || origin[2] == ary[1]
end
puts count
