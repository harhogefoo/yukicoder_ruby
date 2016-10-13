a, b, x, y = gets.chomp.split(" ").map(&:to_i)

coffee = (a + b) * x / a.to_f
tea = (a + b) * y / b.to_f
yunyon = [coffee, tea]
puts yunyon.min
