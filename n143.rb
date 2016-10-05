# 1袋mame_num粒だけ豆が入った袋をmame_pack拾った
mame_num, mame_pack, family_num = gets.chomp.split(" ").map(&:to_i)
age_ary = gets.chomp.split(" ").map(&:to_i)
total_age = age_ary.inject(:+)
result = mame_num * mame_pack - total_age

if result >= 0
  puts result
else
  puts "-1"
end
