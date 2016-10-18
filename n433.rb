n, k = gets.chomp.split(" ").map(&:to_i)

h_solve = Hash.new(0)
h_penalty = Hash.new(0)
h_univ = Hash.new(0)
h_passed_univ = Hash.new(0)

passed = Array.new

n.times do |i|
  solve, penalty, univ = gets.chomp.split(" ").map(&:to_i)
  h_solve[i] = solve
  h_penalty[i] = penalty
  h_univ[i] = univ
  h_passed_univ[univ] = 0
end


k.times do
  # 最も多く解いたチームを抽出
  solve_max = h_solve.max { |a, b| a[1] <=> b[1] }
  # puts "最大値#{solve_max}"
  best_solve = h_solve.select { |key, v| v ==  solve_max[1] }
  # puts "最大値のチーム: #{best_solve}"
  # puts "通過した大学: #{h_passed_univ}"

  if best_solve.length == 1
    num = best_solve.to_a[0][0]
    passed.push(num)
    h_passed_univ[h_univ[num]] += 1
    h_solve.delete(num)
    h_penalty.delete(num)
    h_univ.delete(num)
    next
  else
    # 今までに選抜された同じ大学のチーム数が少ない
    team = -1
    passed_team_num = -1
    is_same_num = false
    best_solve.each do |k, v|
      # puts "通過した大学: #{h_passed_univ[h_univ[k]]}"
      if passed_team_num == -1
        passed_team_num = h_passed_univ[h_univ[k]]
        team = k
      else
        if h_passed_univ[h_univ[k]] < passed_team_num
          passed_team_num = h_passed_univ[h_univ[k]]
          team = k
          is_same_num = false
        elsif h_passed_univ[h_univ[k]] == passed_team_num
          is_same_num = true
        end
      end
    end

    if !is_same_num and team != -1
      passed.push(team)
      h_passed_univ[h_univ[team]] += 1
      h_solve.delete(team)
      h_penalty.delete(team)
      h_univ.delete(team)
      next
    else
      team = -1
      p = -1
      best_solve.each do |k, v|
        if p == -1
          p = h_penalty[k]
          team = k
        else
          if h_penalty[k] < p
            p = h_penalty[k]
            team = k
          end
        end
      end
      passed.push(team)
      h_passed_univ[h_univ[team]] += 1
      h_solve.delete(team)
      h_penalty.delete(team)
      h_univ.delete(team)
    end
  end
end

puts passed
