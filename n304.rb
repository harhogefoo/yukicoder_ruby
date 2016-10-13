('0'..'9').each do |i|
  ('0'..'9').each do |j|
    ('0'..'9').each do |k|
      puts [i, j, k].join.chomp
      STDOUT.flush
      if gets.chomp == "unlocked"
        exit
      end
    end
  end
end
