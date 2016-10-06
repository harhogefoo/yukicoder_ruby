n = gets.to_i

expect = 0
6.times do |i|
  expect += (i+1) * n / 6.0
end
puts expect