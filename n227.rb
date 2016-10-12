a = gets.chomp.split(" ")

h = Hash.new(0)
a.each do |card|
  h[card] += 1
end

three_card = false
two_pair_count = 0
h.each do |card, count|
  three_card = true if count == 3
  two_pair_count += 1 if count == 2
end

if three_card and two_pair_count == 1
  puts "FULL HOUSE"
elsif three_card
  puts "THREE CARD"
elsif two_pair_count == 2
  puts "TWO PAIR"
elsif two_pair_count == 1
  puts "ONE PAIR"
else
  puts "NO HAND"
end
