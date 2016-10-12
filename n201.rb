sa, pa, xa = gets.chomp.split(" ")
sb, pb, xb = gets.chomp.split(" ")
pa = pa.to_i
pb = pb.to_i

if pa < pb
  puts sb
elsif pb < pa
  puts sa
else
  puts -1
end
