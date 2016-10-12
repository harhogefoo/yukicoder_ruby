ary = ["oda", "yukiko"]
n = gets.chomp
b, w = 0, 0
8.times do
  row = gets.chomp.split("")
  b += row.count("b")
  w += row.count("w")
end

if (b + w) % 2 == 0
  puts ary[ary.index(n)]
else
  ary.delete(n)
  puts ary[0]
end
