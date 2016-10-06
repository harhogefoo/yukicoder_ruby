c = gets.to_i
a, b = gets.chomp.split(" ").map(&:to_i)

v = (Math::PI ** 2) * ((a + b) * (b - a) ** 2) / 4
puts v * c
