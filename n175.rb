l = gets.to_i
n = gets.to_i

c = l - 3
puts c == 0 ? n : 2 ** c * n
