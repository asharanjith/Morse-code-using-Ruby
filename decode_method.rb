def decode_char(character)
  morse_code = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..',
    'E' => '.', 'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  morse_code.each do |key, value|
    return key if character == value
  end
end

def decode_word(word)
  word.split.map { |character| decode_char(character) }.join
end

def decode_sentence(sentence)
  sentence.split('  ').map { |word| decode_word(word) }.join(' ')
end

puts decode_sentence('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
