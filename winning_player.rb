require "./player.rb"
class WinningPlayer < Player
  def move(cakes, last)
    choices = [1,2,3]
    if cakes == 3 
      choice = last == 2 ? 1 : 2
    elsif cakes == 4
      choice = last == 3 ? 2 : 3
    elsif cakes == 5
      choice = last == 3 ? 1 : 3
    elsif cakes == 6
      choice = last == 1 ? 2 : 1
    elsif cakes == 7
      choice = last == 1 ? 2 : 1
    elsif cakes == 8 
      choice = last == 3 ? 1 : 3
    elsif cakes == 9
      choice = last == 2 ? 1 : 2
    elsif cakes == 10
      choice = last == 1 ? 3 : 1
    elsif (cakes == 12 || cakes == 13) && last != 3
      choice = 3
    elsif (cakes == 15 || cakes == 16) && last != 3
      choice = 3
    elsif cakes == 15 && last == 3
      choice = 1
    elsif cakes == 11 && last == 3
      choice = 2
    elsif cakes == 16 && last == 3
      choice = 2
    elsif cakes >= 20 
      choice = last == 3 ? 2 : 3
    else
      choice = choices.reject { |i| i == last }.first
    end
    choice
  end
end
