s = gets.chomp

h = Hash.new(0)
s.each_char do |c|
  h[c] += 1
end

puts [h['m'], h['i'], h['n']].min

