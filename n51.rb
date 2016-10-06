w = gets.to_i
d = gets.to_i

power = 0
d.downto(1) do |i|
  day = i ** 2
  power = (w / day.to_f).floor
  w = w -  power
end
puts power
