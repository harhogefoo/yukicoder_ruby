l = gets.to_i
m = gets.to_i
n = gets.to_i

coin = 0
m += n / 25
l += m / 4
coin += n % 25
coin += m % 4
coin += l % 10
puts coin
