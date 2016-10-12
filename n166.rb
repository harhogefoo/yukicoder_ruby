h, w, n, k = gets.chomp.split(" ").map(&:to_i)

if n < h * w
  if h * w % n == k
    puts "YES"
  elsif h * w % n == 0 and n == k
    puts "YES"
  else
    puts "NO"
  end
else
  if h * w == k
    puts "YES"
  else
    puts "NO"
  end
end
