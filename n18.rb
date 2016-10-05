def convert_alphabet(byte, shift_count)
  shift_count = shift_count % 26
  if byte - shift_count < 65
    byte = byte - shift_count + 26
  else
    byte = byte - shift_count
  end
  "" << byte
end

cipher = gets.chomp

j = 1
answer = ""
cipher.each_byte do |b|
  answer += convert_alphabet(b, j)
  j += 1
end

puts answer

