n, h, m, t = gets.chomp.split(" ").map(&:to_i)

pass_minute = h * 60 + m + t * (n - 1)
hour = pass_minute / 60 % 24
minute = pass_minute % 60

puts hour
puts minute
