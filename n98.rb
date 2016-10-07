xp, yp = gets.chomp.split(" ").map(&:to_i)
r = Math.sqrt(xp ** 2 + yp ** 2)
d = r * 2
puts d.floor + 1
