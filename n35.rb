n = gets.to_i

typing_count = 0
miss_count = 0
n.times do
  t, s = gets.chomp.split(" ")
  t = t.to_i
  available_typing_count = t / 1000.0 * 12
  available_typing_count = available_typing_count.floor
  if s.length <= available_typing_count
    typing_count += s.length
  else
    typing_count += available_typing_count
    miss_count += s.length - available_typing_count
  end
end
puts "#{typing_count} #{miss_count}"
