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
    result = roll
    asset(result)
  end

  def roll
    deme1 = Dice.roll
    deme2 = Dice.roll
    deme3 = Dice.roll
  end

  def assert(demes)
    case demes.sort
    when PINZORO
      return "win"
    when NIZORO
      return "win"
    when SANZORO
      return "win"
    when YONZORO
      return "win"
    when GOZORO
      return "win"
    when ROKUZORO
      return "win"
    when HIFUMI
      return "win"
    when SHIGORO
      return "loose"
    else
      deme = demes.combination(2).select{|a,b| a == b}.flatten.first
      if deme == 1
        return "loose"
      else
      if demes.uniq.size == 2
      end
    end
  end
end

game = Game.new
game.main
