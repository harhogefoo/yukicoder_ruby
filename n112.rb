n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

crane = 0
turtle = 0
if a.uniq.length == 1
 if a[0] / (n - 1) == 2
   crane = a.length
 else
   turtle = a.length
 end
else
  min = a.min
  max = a.max
  turtle = a.count(min)
  crane = a.count(max)
end
puts "#{crane} #{turtle}"
