s, f = gets.chomp.split(" ").map(&:to_i)

floor = 1
floor += s / f if s >= f
puts floor
