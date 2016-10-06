n = gets.to_i


total_sleep_h, total_sleep_m = 0, 0
n.times do
  sleep, wakeup = gets.chomp.split(" ")
  sleep_h, sleep_m = sleep.chomp.split(":").map(&:to_i)
  wakeup_h, wakeup_m = wakeup.chomp.split(":").map(&:to_i)

  # 日付をまたぐ睡眠
  if sleep_h > wakeup_h
    sleep_h = 23 - sleep_h
    sleep_m = 60 - sleep_m

    sleep_h += wakeup_h
    sleep_m += wakeup_m

  # 日付をまたがない睡眠
  elsif sleep_h < wakeup_h
    sleep_h = sleep_h + 1
    sleep_m = 60 - sleep_m

    sleep_h = wakeup_h - sleep_h
    sleep_m += wakeup_m
  # 日付をまたぐが，寝たhourが同じ
  else
    if sleep_m > wakeup_m
      sleep_m = 60 - sleep_m
      sleep_h = 23
    else
      sleep_m = wakeup_m - sleep_m
      sleep_h = 0
    end
  end
  total_sleep_h += sleep_h
  total_sleep_m += sleep_m
end

puts "#{total_sleep_h * 60 + total_sleep_m}"
