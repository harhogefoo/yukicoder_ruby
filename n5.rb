width = gets.to_i
block_num = gets.to_i
blocks = gets.chomp.split(" ").map(&:to_i)
blocks.sort!

total = 0
count = 0
blocks.each do |block|
  total += block
  if total <= width
    count += 1
  else
    break
  end
end
puts count
