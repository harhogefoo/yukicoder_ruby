numbers = (1..10).to_a
init_ary = Array.new(numbers.length, 0)
ary = [numbers, init_ary].transpose
h = Hash[*ary.flatten]

n = gets.to_i
n.times do
  a = gets.chomp.split(" ").map(&:to_i)
  a.each do |i|
    h[i] += 1
  end
end

# 2で割った値をカウント
count = 0
h.each do |k, v|
  count += v / 2
  h[k] = v % 2
end

# 要素が1のものを選択
h = h.select { |k, v| v == 1 }
count += h.length / 4
puts count
