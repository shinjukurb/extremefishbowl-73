require "spec_helper"
require_relative "../game.rb"

describe Game do
  describe "#assert" do
    context "ひふみ" do
      it do
        game
        expect(true).to eq true
      end
    end
  end
end
