n = gets.to_i
count = 0
n.times do
  c, d = gets.chomp.split(" ").map(&:to_i)
  c = (c + 1) / 2
  count += c * d
end
puts count % ((10 ** 9) + 7)
