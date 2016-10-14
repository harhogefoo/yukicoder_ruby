a, b = gets.chomp.split(" ").map(&:to_i)

if a < b
  x = b - a - 1
  x += a - 1
  puts x
else
  puts 2000000000 - b - 1
end
