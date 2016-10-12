p, q = gets.chomp.split(" ").map(&:to_f)

p1 = (1 - p) * q
p2 = p * (1 - q) * q
if p1 < p2
  puts "YES"
else
  puts "NO"
end


