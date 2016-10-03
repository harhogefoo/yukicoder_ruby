n, k = gets.chomp.split(" ").map(&:to_i)

if n == k
  puts "Drew"
elsif (n == 0 and k == 1) or (n == 1 and k == 2) or (n == 2 and k == 0)
  puts "Won"
else
  puts "Lost"
end