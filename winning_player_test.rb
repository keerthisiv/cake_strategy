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
