require "./random_player.rb"
require "./winning_player.rb"
require "./game_simulator.rb"

class GameOver < RuntimeError
end
def plural(x)
  if x == 1 then return x.to_s + " cake"
  else return x.to_s + " cakes" end
end
# Example Game, real one has better AI
@player = WinningPlayer
def Game(n, debug = false)
  cakes = n
  if cakes <= 0 then raise "At least one cake required" end
  new_player = @player.new(cakes)
  # first ask player if he wish to move first
  first = new_player.firstmove(cakes)
  last = 0
  if debug then puts plural(cakes) + " on the table. You decided to move " + (first ? "first" : "last") end
  # now, let's game begin
  while true
    # my move
    if not first then
      allow = []
      for i in 1..3
        if cakes >= i and i != last then
          allow.push(i)
        end
      end
      return true if allow.length == 0 #then raise GameOver, "Stalemate" end
      last = allow.sample
      cakes -= last
      if cakes == 0 then
        if debug then puts "Yum! I ate the last cake, you win!" end
        return true
      end
      if debug then puts "I ate " + plural(last) + ", " + plural(cakes) + " still left." end 
    else
      first = false
    end
    # your move
    if cakes == 1 and last == 1 then
      if debug then puts "I lead you to stalemate, so you are winner." end
      return true
    end
    move = new_player.move(cakes, last)
    if move > 4 then raise "You are so greedy! Don't try to eat more than 3 cakes." end
    if !([1,2,3].include? move) then raise "Illegal move (must be 1, 2 or 3, type Number)" end
    if move == last then raise "You cannot eat the same quantity of cakes as you opponent on previous move" end
    if move > cakes then raise "Don't try to eat more cakes that left on table" end
    return false if move == cakes #then raise GameOver, "You ate the last cake!" end
    cakes -= move
    last = move
    if debug then puts "You ate " + plural(move) + ", " + plural(cakes) + " still left." end
  end #while 
end


statistical_check
