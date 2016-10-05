# 初期状態で北を向いている
# まずxを求めて, 次にyを求める
x = gets.to_i
y = gets.to_i
l = gets.to_i

action = 0

# xの移動
action += x.abs / l
action += 1 if x.abs % l > 0
# xの移動を行った場合は90°回転を1回行っている
action += 1 if x != 0

# yの移動
action += y.abs / l
action += 1 if y.abs % l > 0

if y <= 0
  action += 1 if y != 0
  # 180°回転を行っているのでさらに + 1
  action += 1 if x == 0
end

if x == 0 and y == 0
  puts "0"
else
  puts action
end
