s = gets.chomp

s.length.times do |i|
  if s[i] == ">"
    s[i] = "<"
  else
    s[i] = ">" if s[i] == "<"
  end
end

(s.length / 2).times do |i|
  tmp = s[i]
  s[i] = s[s.length - 1 - i]
  s[s.length - 1 - i] = tmp
end

puts s

