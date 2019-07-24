require_relative "dice.rb"

class Game
  PINZORO = [1, 1, 1]
  NIZORO = [2, 2, 2]
  SANZORO = [3, 3, 3]
  YONZORO = [4, 4, 4]
  GOZORO = [5, 5, 5]
  ROKUZORO = [6, 6, 6]
  HIFUMI = [1, 2, 3]
  SHIGORO = [4, 5, 6]

  def main
    puts roll
  end

  def roll
    deme1 = Dice.roll
    deme2 = Dice.roll
    deme3 = Dice.roll
  end

  def assert(demes)
    case demes.sort
    when PINZORO
    when NIZORO
    when SANZORO
    when YONZORO
    when GOZORO
    when ROKUZORO
    when HIFUMI
    when SHIGORO
    else
      
      if demes.uniq.size == 2
      end
    end
  end
end

game = Game.new
game.main
