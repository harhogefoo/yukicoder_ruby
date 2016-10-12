n, m = gets.chomp.split(" ").map(&:to_i)
c_ary = gets.chomp.split(" ").map(&:to_i)
c_ary.sort!

c_ary.length.times do |i|
  if c_ary[i] - m <= 0
    m -= c_ary[i]
    c_ary[i] = 0
  end

  break if m <= 0
end

puts c_ary.count(0)

