length, speed = gets.chomp.split(" ").map(&:to_i)
if (length % (speed * 2)) == 0
  puts length / (speed * 2) * speed - speed
else
  puts length / (speed * 2) * speed
end
