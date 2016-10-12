n = gets.to_i
ary = Array.new
n.times do
  a, b = gets.split(" ").map(&:to_i)
  ary.push(a + 4 * b)
end

max = ary.max
count = 0
ary.each do |a|
  if (max - a) % 2 == 0
    count += (max - a) / 2
  else
    count = -1
    break
  end
end
puts count

