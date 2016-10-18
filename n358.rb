a = gets.split.map(&:to_i)
a1, a2, a3 = a
count = 0
if a != a.uniq
  puts count
elsif a2 == a.max or a2 == a.min
  puts "INF"
else
  1.upto(a.max) do |p|
    b1 = a1 % p; b2 = a2 % p; b3 = a3 % p
    b = [b1, b2, b3]
    if (b2 == b.max or b2 == b.min) and b == b.uniq
      count += 1
    end
  end
  puts count
end