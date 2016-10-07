# 1, 2, 4, 8, 16, 32..
s = gets.chomp

path = 1
s.length.times do |i|
  if s[i] == 'L'
    path = path * 2
  else
    path = path * 2 + 1
  end
end

puts path
