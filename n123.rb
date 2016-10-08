n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

ary = (1..n).to_a

a.each do |num|
  next if num == 1
  tmp = ary[num-1]
  ary.delete_at(num-1)
  ary.unshift(tmp)
end
puts ary[0]

