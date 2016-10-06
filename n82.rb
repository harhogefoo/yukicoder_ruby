w, h, c = gets.chomp.split(" ")
w = w.to_i; h = h.to_i

wb = Array.new
wb.push(c)
if c == 'B'
  wb.push('W')
else
  wb.push('B')
end

h.times do |i|
  w.times do |j|
    print wb[(j + i) % 2]
  end
  puts ""
end
