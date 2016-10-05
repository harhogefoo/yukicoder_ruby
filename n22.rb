n, k = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp

h = Hash.new

s.length.times do |i|
  if s[i] == '('
    h[i] = -1
  else
    h.reverse_each do |key, value|
      if value == -1
        h[key] = i
        break
      end
    end
  end
end

if h.keys.include?(k-1)
  puts h[k-1] + 1
else # 値からキーを取得
  puts h.key(k-1) + 1
end
