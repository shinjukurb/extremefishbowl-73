require "spec_helper"
require_relative "../game.rb"

describe Game do
  describe "#assert" do
    context "ひふみ" do
      it do
        game = Game.new
        hifumi = [3,2,1]
        expect(game.assert(hifumi)).to eq "lose"
      end
    end

    context "しごろ" do
      it do
        game = Game.new
        shigoro = [6,5,4]
        expect(game.assert(shigoro)).to eq "win"
      end
    end
  end
end
