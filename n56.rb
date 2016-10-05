price, tax = gets.chomp.split(" ").map(&:to_i)
tax =  price * (tax / 100.0)
puts (price + tax).floor
