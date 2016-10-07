gets
x_ary = gets.chomp.split(" ").map(&:to_i)

even_count = 0
odd_count = 0
x_ary.each do |x|
  if x % 2 == 0
    even_count += 1
  else
    odd_count += 1
  end
end

puts (even_count - odd_count).abs
