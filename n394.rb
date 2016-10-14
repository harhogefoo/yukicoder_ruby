s = gets.chomp.split(" ").map(&:to_i)
s.sort!
s.delete_at(0)
s.delete_at(s.length-1)

puts sprintf("%.2f", s.inject(:+) / s.length.to_f)
