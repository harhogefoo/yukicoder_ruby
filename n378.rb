n = gets.to_i

x = n
t = n
loop do
  x += t / 2
  t = t / 2
  break if t <= 1
end

y = n * 2
puts y - x
