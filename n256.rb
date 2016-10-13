n = gets.chomp.split("")
n.sort! { |a, b| b <=> a }
puts n.join
