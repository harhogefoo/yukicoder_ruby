needed_ex = gets.to_i
normal_ex = gets.to_f
campaign_ex = gets.to_f

normal_item_count = (needed_ex / normal_ex).ceil
campaign_item_count = (needed_ex / campaign_ex).ceil
# puts normal_item_count * 2 / 3.0
# puts campaign_item_count

if normal_item_count * 2 / 3.0 >= campaign_item_count
  puts "YES"
else
  puts "NO"
end

