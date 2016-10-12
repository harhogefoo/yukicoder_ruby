prime = [2, 3, 5, 7, 11, 13]
synthesis = [4, 6, 8, 9, 10, 12]

k = gets.chomp.to_i

count = 0
prime.each do |p|
  synthesis.each do |q|
    if p * q == k
      count += 1
    end
  end
end

puts count / (prime.length.to_f * synthesis.length.to_f)
