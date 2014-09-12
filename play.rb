require_relative "./lib/game"

puts "Welcome to the guessing game"
puts "Guess a number between 1 and 5"
game = Game.new(5)
game.play
