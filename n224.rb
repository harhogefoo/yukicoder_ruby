gets
s = gets.chomp.split("")
t = gets.chomp.split("")

count = 0
s.length.times do |i|
  if s[i] != t[i]
    count += 1
  end
end
puts count
