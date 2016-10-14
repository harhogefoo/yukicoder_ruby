ary = ["I","II","III","IIII","V","VI","VII","VIII","IX","X","XI","XII"]
s1, t = gets.chomp.split(" ")
t = t.to_i

puts ary[(ary.index(s1) + t) % ary.length]
