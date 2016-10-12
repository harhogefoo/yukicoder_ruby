h, w = gets.chomp.split(" ").map(&:to_i)
if h < w
  puts "YOKO"
else
  puts "TATE"
end