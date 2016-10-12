c1 = gets.chomp
c2 = gets.chomp
c = c1 + c2
puts c.split("x").max.length rescue puts 0
