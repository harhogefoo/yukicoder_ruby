n = gets.to_i
ary = gets.chomp.split(" ").map(&:to_i)

level_ary = Array.new(7, 0)

n.times do |i|
  level_ary[ary[i]] += 1
end

max = level_ary.max
level_ary.length.downto(1) do |i|
  if max == level_ary[i-1]
    puts i-1
    break
  end
end

