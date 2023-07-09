

def caesar_cipher(text, shift)
  result = ""
  text.each_char do |char|
    if char.match(/[A-Za-z]/)
      ascii_offset = char.match?(/[A-Z]/) ? 65 : 97
      shifted_char = ((char.ord - ascii_offset + shift) % 26 + ascii_offset).chr
      result += shifted_char
    else
      result += char
    end
  end
  puts result
end

print "Enter the string to encrypt: "
text = gets.chomp

print "Enter the shift factor: "
shift = gets.chomp.to_i

caesar_cipher(text, shift)

