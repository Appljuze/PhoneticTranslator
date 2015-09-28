require_relative 'phonetic.rb'

puts "Type 'P2A' to convert from phonetic to alphabetic letters"
puts "Type 'A2P' to convert from alphabetic to phonetic letters"
puts "Type 'quit' to exit the program"

while true
  input = gets.chomp
  Phonetic.translate(input)
end