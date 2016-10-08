s = gets.chomp.split("")
n = s.count("N")
e = s.count("E")
w = s.count("W")
s = s.count("S")

x = (e - w).abs
y = (n - s).abs

puts Math::sqrt(x ** 2 + y ** 2)