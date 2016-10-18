n = gets.to_i
h = Hash.new(0)

n.times do
  eto = gets.chomp
  h[eto] += 1
end

h.each do |k, v|
  if n % 2 == 0 and n / 2 < v
    puts "NO"
    exit
  end

  if n % 2 == 1 and (n / 2) + 1 < v
    puts "NO"
    exit
  end
end
puts "YES"