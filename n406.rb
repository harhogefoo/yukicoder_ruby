n = gets.to_i
x = gets.chomp.split(" ").map(&:to_i)

def check(p1, p2)
  if p1 == p2
    puts 'NO'
    exit
  end
end

x.sort!
check(x[0], x[1])

d = x[1] - x[0]
(x.length - 2).times do |p|
  check(x[p+2], x[p+1])
  dt = x[p+2] - x[p+1]
  if d != dt
    puts 'NO'
    exit
  end
end

puts 'YES'
