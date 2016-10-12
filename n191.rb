n = gets.to_i
c = gets.chomp.split(" ").map(&:to_i)

total = c.inject(:+) / 10
result = 0
c.each do |i|
  if i <= total
    result += 30
  end
end
puts result
