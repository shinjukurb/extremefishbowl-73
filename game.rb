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
    puts assert(result)
  end

  def roll
    3.times.map{|_i| Dice.roll}
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
      return "lose"
    when SHIGORO
      return "win"
    else
      deme = demes.combination(2).select{|a,b| a == b}.flatten
      nokorideme = (demes - deme).first

      if nokorideme == 1
        return "deme1"
      elsif nokorideme == 2
        return "deme2"
      elsif nokorideme == 3
        return "deme3"
      elsif nokorideme == 4
        return "deme4"
      elsif nokorideme == 5
        return "deme5"
      elsif nokorideme == 6
        return "deme6"
      else
        "lose"
      end
    end
  end
end
