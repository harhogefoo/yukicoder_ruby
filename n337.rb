n, p = gets.chomp.split(" ").map(&:to_i)

if p == n * p
  puts "="
else
  puts "!="
end

