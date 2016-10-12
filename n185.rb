n = gets.to_i
x, y = gets.chomp.split(" ").map(&:to_i)
answer = y - x
(n-1).times do |i|
  x, y = gets.chomp.split(" ").map(&:to_i)
  if answer != y - x
    puts -1
    exit
  end
end
if answer <= 0
  puts -1
else
  puts answer
end
