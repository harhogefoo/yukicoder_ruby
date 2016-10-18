s = gets.chomp

regexp = /[^…]/
s = s.split(regexp)

if s.max.nil?
  puts 0
else
  puts s.max.length
end
