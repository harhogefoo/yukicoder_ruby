n = gets.to_i
count = 0
n.times do
  c, d = gets.chomp.split(" ").map(&:to_i)
  if c < 3
    count += 1 * d
  else
    count += (c / 2 + 1) * d
  end
end
puts count % ((10 ** 9) + 7)
