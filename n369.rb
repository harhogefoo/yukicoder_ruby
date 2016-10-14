gets
a = gets.chomp.split(" ").map(&:to_i)
v = gets.to_i
a = a.inject(:+)
puts a - v
