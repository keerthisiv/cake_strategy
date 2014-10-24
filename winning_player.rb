require "./player.rb"
class WinningPlayer < Player
  def move(cakes, last)
    choices = [1,2,3]
    if cakes == 3 && last != 2
      choice = 2
    else
      choice = choices.reject { |i| i == last }.first
    end
    choice
  end
end
