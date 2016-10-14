a, b = gets.chomp.split(" ").map(&:to_i)

if b - a > 0
  puts "+#{b-a}"
elsif b - a < 0
  puts "-#{(b-a).abs}"
else
  puts 0
end
