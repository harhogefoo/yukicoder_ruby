a = gets.chomp.split(".").map(&:to_i)
b = gets.chomp.split(".").map(&:to_i)

if b[0] < a[0]
  puts "YES"
elsif b[0] == a[0]
  if b[1] < a[1]
    puts "YES"
  elsif b[1] == a[1]
    if b[2] <= a[2]
      puts "YES"
    else
      puts "NO"
    end
  else
    puts "NO"
  end
else
  puts "NO"
end
