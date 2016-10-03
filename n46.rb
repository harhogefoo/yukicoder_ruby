a, b = gets.chomp.split(" ").map(&:to_i)
count = 0
count += b / a
count += 1 if b % a != 0
puts count
