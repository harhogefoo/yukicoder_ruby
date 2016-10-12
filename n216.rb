n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)

b.length.times do |i|
  h[b[i]] += a[i]
end

zero = h[0]

if zero == nil
  puts "NO"
  exit
end

check = true
h.each do |k, v|
  if zero < v
    check = false
    break
  end
end

if check
  puts "YES"
else
  puts "NO"
end
