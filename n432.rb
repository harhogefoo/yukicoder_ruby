t = gets.to_i

def calc(ary)
  if ary.length == 1
    return ary
  end
  a = Array.new
  (ary.length-1).times do |i|
    ans = ary[i] + ary[i+1]
    while ans >= 10
      ans = ans.to_s.split("").map(&:to_i)
      ans = ans.inject(:+)
    end
    a.push(ans)
  end
  calc(a)
end

t.times do
  s = gets.chomp.split("").map(&:to_i)
  puts calc(s)
end