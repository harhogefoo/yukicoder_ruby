s = gets.chomp

min = 1000

s.length.times do |i|
  w_flag = false
  if s[i] == 'c'
    (i..(s.length)).each do |j|
      if s[j] == 'w' and not w_flag
        w_flag = true
      elsif s[j] == 'w' and w_flag
        length = j - i + 1
        min = length if length < min
        break
      end
    end
  end
end

if min == 1000
  puts -1
else
  puts min
end

