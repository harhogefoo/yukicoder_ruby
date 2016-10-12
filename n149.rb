aw, ab = gets.chomp.split(" ").map(&:to_i)
bw, bb = gets.chomp.split(" ").map(&:to_i)
c, d = gets.chomp.split(" ").map(&:to_i)

white = 0
if ab < c
  c -= ab
  aw -= c
  bw += c
end

if bw <= d
  aw += bw
else
  aw += d
end
puts aw



