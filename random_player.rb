class RandomPlayer
  def initialize(cakes)
  end
  # Decide who move first - player or opponent (return true if player)
  def firstmove(cakes)
    true # I want to move first
  end
  # Decide your next move (return 1, 2 or 3)
  def move(cakes, last)
    allow = [1,2,3].reject { |i| i == last }
    move = allow.sample
    move > cakes ? (cakes == last ? cakes-1 : cakes): move 
  end
end
