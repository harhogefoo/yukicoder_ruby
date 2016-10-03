require 'date'

start_date = Date.parse('2015-01-01')
end_date = Date.parse('2015-12-31')
count = 0
(start_date..end_date).each do |date|
  d_ary = date.strftime("%m %d").split(" ")
  month = d_ary[0].to_i
  date_sum = d_ary[1].split("").map(&:to_i).inject(:+)
  count += 1if month == date_sum
end
puts count
