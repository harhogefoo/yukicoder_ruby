n = gets.to_i
m = gets.to_i

if n / m < 1000
  puts "0"
  exit
end

if n % m != 0
  hideo_num = n / m / 1000 * 1000
  puts hideo_num
else
  puts n / m
end


