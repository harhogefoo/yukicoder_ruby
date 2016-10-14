s = gets.chomp

count = 0
is_c = false
w_count = 0
s.each_char do |c|
  is_c = true if c == 'c'
  w_count += 1 if is_c and c == 'w'

  if is_c and w_count <= 2
    count += 1
  end
  break if w_count == 2
end

if w_count != 2
  puts -1
else
  puts count
end
