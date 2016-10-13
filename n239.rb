n = gets.to_i

renchon = Hash.new(0)
n.times do |i|
  a = gets.chomp.split(" ")
  a.length.times do |j|
    if a[j] == "nyanpass"
      renchon[j+1] += 1
    end
  end
end

renchon_num = 0
renchon.each do |k, nyanpass|
  if nyanpass == n - 1
    renchon_num += 1
  end
end

if renchon_num != 1
  puts -1
else
  puts renchon.key(n-1)
end
