a = gets.chomp.split("")
b = gets.chomp.split("")

u_a = a.uniq
u_a.each do |x|
  if a.count(x) != b.count(x)
    puts "NO"
    exit
  end
end

puts "YES"
