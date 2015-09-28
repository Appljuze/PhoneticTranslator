require 'test/unit'
require_relative 'phonetic.rb'

class PhoneticTest < Test::Unit::TestCase

  # Couldn't figure out why this test won't start.
  # Talked to Professor Kiser in class & he told me
  # to just submit it.

  def test_rit_to_phonetic
    assert_equal 'ROMEO INDIA TANGO', Phonetic.to_phonetic('RIT')
  end

  def test_line_rit_to_phonetic
    assert_equal 'ROMEO INDIA TANGO', Phonetic.translate('A2P RIT')
  end

  def test_hello_to_phonetic
    assert(Phonetic.translate('a2p hello') == 'HOTEL ECHO LIMA LIMA OSCAR', 'Capitalization is not working')
  end

  def test_hello_from_phonetic
    assert(Phonetic.translate('p2a HOTEL ECHO LIMA LIMA OSCAR') == 'HELLO', 'Phonetic to alpha translation is not working')
  end

end