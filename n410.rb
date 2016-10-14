a, b = gets.chomp.split(" ").map(&:to_i)
c, d = gets.chomp.split(" ").map(&:to_i)

puts ((c - a).abs + (d - b).abs) / 2.0
