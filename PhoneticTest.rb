require 'test/unit'
require_relative 'phonetic.rb'

class PhoneticTest < Test::Unit::TestCase

  def test_rit_to_phonetic
    assert_equal 'ROMEO INDIA TANGO', Phonetic.to_phonetic('RIT')
  end

  def test_line_rit_to_phonetic
    assert_equal 'ROMEO INDIA TANGO', Phonetic.translate('A2P RIT')
  end

  def test_hello_to_phonetic
    assert(Phonetic.translate('A2P hello') == 'HOTEL ECHO LIMA LIMA OSCAR', 'Capitalization is not working')
  end

end