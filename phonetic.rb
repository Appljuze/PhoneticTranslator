# Convert to/from phonetic alphabet
# YOUR NAME HERE

class Phonetic

  Letters = [
      ['A', 'ALPHA'],
      ['B', 'BRAVO'],
      ['C', 'CHARLIE'],
      ['D', 'DELTA'],
      ['E', 'ECHO'],
      ['F', 'FOXTROT'],
      ['G', 'GOLF'],
      ['H', 'HOTEL'],
      ['I', 'INDIA'],
      ['J', 'JULIET'],
      ['K', 'KILO'],
      ['L', 'LIMA'],
      ['M', 'MIKE'],
      ['N', 'NOVEMBER'],
      ['O', 'OSCAR'],
      ['P', 'PAPA'],
      ['Q', 'QUEBEC'],
      ['R', 'ROMEO'],
      ['S', 'SIERRA'],
      ['T', 'TANGO'],
      ['U', 'UNIFORM'],
      ['V', 'VICTOR'],
      ['W', 'WHISKEY'],
      ['X', 'XRAY'],
      ['Y', 'YANKEE'],
      ['Z', 'ZULU'],
  ]

  # Translate a word to its phonetic alphabet equivalent
  def self.to_phonetic(word)
    phoneticWords = ''
    word.each_char do |letter|
      Letters.each do |(alpha,phonetic)|
        if letter == alpha
          phoneticWords.concat("#{phonetic} ")
        end
      end
    end
    return phoneticWords
  end

  # Translate a sequence of phonetic alphabet code words
  # to their alphabetic equivalent
  def self.from_phonetic(str)
    alphabeticWords = ''
    str.split(' ').each do |word|
      Letters.each do |(alpha,phonetic)|
        if word == phonetic
          alphabeticWords.concat(alpha)
        end
      end
    end
    return alphabeticWords
  end

  # If the line starts with A2P, call to_phonetic on the rest of the substring
  # If the line starts with P2A, call from_phonetic on the rest of the substring
  # Otherwise, return nothing.
  def self.translate(line)
    line.upcase!
    if line.start_with?('QUIT')
      exit
    elsif line.start_with?('P2A')
      # Removes the 'P2A ' from the beginning of the line
      line[0..3] = ''

      print from_phonetic(line)
      puts ''
    elsif line.start_with?('A2P')
      # Removes the 'A2P ' from the beginning of the line
      line[0..3] = ''

      print to_phonetic(line)
      puts ''
    else puts 'Unknown command. Try "P2A" or "A2P"'
    end
  end

end

# This is ruby idiom that allows us to use both unit testing and command line processing
# This gets run with ruby phonetic.rb
# Does not get run when we use unit testing, e.g. ruby phonetic_test.rb
if __FILE__ == $PROGRAM_NAME
  $stdin.each do |line|
    puts Phonetic.translate(line)
  end
end