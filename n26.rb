n = gets.to_i
m = gets.to_i

cups = Array.new(3, 0)
cups[n-1] = 1

m.times do
  p, q = gets.chomp.split(" ").map(&:to_i)
  p -= 1; q-= 1
  next if cups[p] == cups[q]
  tmp = cups[p]
  cups[p] = cups[q]
  cups[q] = tmp
end

puts cups.index(1) + 1
