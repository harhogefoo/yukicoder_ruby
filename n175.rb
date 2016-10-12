l = gets.to_i
n = gets.to_i
codon = gets.chomp.split(" ")

ary = ['A', 'B']
p = ary.repeated_permutation(l - codon.length).collect { |a| a.join }
puts p.length
