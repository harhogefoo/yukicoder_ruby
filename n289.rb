s = gets.chomp.split("").map(&:to_i)
puts s.inject(:+)
