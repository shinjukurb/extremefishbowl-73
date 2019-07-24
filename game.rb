require_relative "dice.rb"

class Game
  def main
    puts furu
  end

  def furu
    deme1 = Dice.roll
    deme2 = Dice.roll
    deme3 = Dice.roll
  end

end

game = Game.new
game.main
