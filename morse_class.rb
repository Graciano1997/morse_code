class Morse
  const MORSE_TO_HUMAN = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
    '-----' => '0',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9'
  }.freeze

  def decode_char(morse_code)
    @human_char = MORSE_TO_HUMAN[morse_code]
    print @human_char
  end

  def decode_word(morse_code)
    @delimiter = ' '
    @morse_array = morse_code.split(@delimiter)
    @morse_array.each { |i| decode_char(i) }
    print ' '
  end

  def decode(morse_code)
    @delimiter = '  '
    @morse_array = morse_code.split(@delimiter)
    @morse_array.each { |i| decode_word(i) }
  end
end

obj_message = Morse.new
obj_message.decode('   .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
