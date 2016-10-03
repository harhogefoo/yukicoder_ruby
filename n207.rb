a, b = gets.chomp.split(" ").map(&:to_i)

(a..b).to_a.each do |day|
  if day % 3 == 0
    puts day
  elsif day.to_s.split("").include?("3")
    puts day
  end
end
