d1, d2, d3, s = gets.chomp.split(" ").map(&:to_i)

if s == 1
  puts "SURVIVED"
  exit
end

d = [d1, d2, d3]

if d.count(1) < 2
  puts "SURVIVED"
else
  puts "DEAD"
end
