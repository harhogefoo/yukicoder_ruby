n = gets.to_i
numbers = (0..9).to_a
init = Array.new(numbers.length, 0)
ary = [numbers, init].transpose
h = Hash[*ary.flatten]

n.times do
  input = gets.chomp.split(" ")
  yes_or_no = input[-1]
  input.delete_at(-1)
  input.map!(&:to_i)

  if yes_or_no == "YES"
    input.each do |i|
      next unless h.has_key?(i)
      h[i] += 1
    end
  else
    input.each do |i|
      h.delete(i)
    end
  end
end

if h.length == 1
  puts h.keys[0]
else
  h = Hash[ h.sort_by{ |_, v| -v } ]
  puts h.shift[0]
end
