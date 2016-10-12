n = gets.chomp
ary = Array.new

loop do
  if n[0,4] == "hamu"
    ary.push(1)
    n[0,4] = ""
  else
    ary.push(0)
    n[0,3] = ""
  end
  break if n.length == 0
end
ans = ary.join.to_i(2) * 2
if not ans.to_s(2).include?("1")
  puts "#{ans.to_s(2).gsub!(/0/, 'ham')}"
elsif not ans.to_s(2).include?("0")
  puts "#{ans.to_s(2).gsub!(/1/, 'hamu')}"
else
  puts "#{ans.to_s(2).gsub!(/1/, 'hamu').gsub!(/0/, 'ham')}"
end
