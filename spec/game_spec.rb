require "spec_helper"
require_relative "../game.rb"

describe Game do
  let(:game){ Game.new }

  describe "#assert" do
    subject{ game.assert(demes) }
    context "ひふみ" do
      let(:demes){[3,2,1]}
      it do
        expect(game.assert(demes)).to eq "lose"
      end
    end

    context "しごろ" do
      let(:demes){[6,5,4]}
      it do
        expect(game.assert(demes)).to eq "win"
      end
    end

    context "でめ" do
      let(:demes){[2,2,1]}
      it do
        expect(game.assert(demes)).to eq "deme1"
      end
    end

    context "pinzoro" do
      let(:demes){[1,1,1]}
      it do
        expect(game.assert(demes)).to eq "win"
      end
    end
  end
end
