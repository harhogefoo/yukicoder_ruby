n = gets.to_i
death = 30000
need = death * 100

dungeon = Hash.new(0)
n.times do |i|
  gain, death_count = gets.chomp.split(" ").map(&:to_i)
  dungeon[i+1] = gain - death * death_count
end


max = dungeon.max_by {|_, v| v}
if need <= max[1] * 6
  puts "YES"
else
  puts "NO"
  exit
end

6.times do
  puts max[0]
end
