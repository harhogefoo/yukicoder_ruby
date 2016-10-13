s = gets.chomp

h = Hash.new(0)
s.each_char do |c|
  if c == 't'
    h[:t] += 1
  elsif c == 'r'
    h[:r] += 1
  elsif c == 'e'
    h[:e] += 1
  end
end
h[:e] = h[:e] / 2

result = h.min { |a, b| a[1] <=> b[1] }
puts result[1]
