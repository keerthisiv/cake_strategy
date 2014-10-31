require "./winning_player.rb"

def assert(message, result)
  puts "#{message}: #{result}"
end

@player = WinningPlayer.new(3)
assert("choose 2, when last==1", @player.move(3, 1) == 2)
assert("choose 2, when last==3", @player.move(3, 3) == 2)
assert("never choose the last move", @player.move(3, 1) != 1)
assert("never choose the last move", @player.move(3, 2) != 2)
assert("never choose the last move", @player.move(3, 3) != 3)
assert("always choose 1 when 3 left and last move 2", @player.move(3, 2) == 1)
assert("always choose 3 when 4 left and last move is not 3", @player.move(4, 1) == 3)
assert("always choose 3 when 4 left and last move is not 3", @player.move(4, 2) == 3)
assert("always choose 2 when 4 left and last move is 3", @player.move(4, 3) == 2)
assert("always choose 3 when 5 left and lost move is 2", @player.move(5, 2) == 3)

