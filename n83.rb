n = gets.to_i

if n % 2 == 1
  print '7'
  n -= 3
end
count = n / 2
count.times do
  print '1'
end
puts