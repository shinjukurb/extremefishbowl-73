require "spec_helper"
require_relative "../game.rb"

describe Game do
  let(:game){ Game.new }

  describe "#assert" do
    context "ひふみ" do
      it do
        demes = [3,2,1]
        expect(game.assert(demes)).to eq "lose"
      end
    end

    context "しごろ" do
      it do
        demes = [6,5,4]
        expect(game.assert(demes)).to eq "win"
      end
    end

    context "でめ" do
      it do
        demes = [2,2,1]
        expect(game.assert(demes)).to eq "deme1"
      end
    end

  end
end
