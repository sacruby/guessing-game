require_relative "./lib/game"

puts "Welcome to the guessing game"

game = Game.new(5)
game.play
