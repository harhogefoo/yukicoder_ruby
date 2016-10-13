s, t, u = gets.chomp.split(" ")
t = t.to_i
u = u.to_i

if t == u
  s[t] = ""
else
  if t < u
    s[t] = ""
    s[u-1] = ""
  else
    s[u] = ""
    s[t-1] = ""
  end
end

puts s

