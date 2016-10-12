n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)

a.each do |i|
  h[i] += 1
end
s = h.select {|k, v| v == 1}
puts s.length
