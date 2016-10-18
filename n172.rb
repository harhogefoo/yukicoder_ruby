x, y, r = gets.chomp.split(" ").map(&:to_i)
puts (x.abs + y.abs + Math::sqrt(2) * r).ceil
