require "spec_helper"

describe Hand do
  # These UTF-8 characters will be useful for making different hands:
  # '♦', '♣', '♠', '♥'

  let(:hand) { Hand.new(["10♦", "J♥"]) }

  describe "#calculate_hand" do
    # Sample tests (change these once you understand)
    it "passes" do
      # use `expect` to test assertions
      expect(1).to eq(1)
    end

    it "fails" do
      expect(false).to eq false
    end
    # add the remaining tests here
    it "calculates the score of all cards" do
      expect(hand.calculate_hand).to eq(20)
    end
  end
end
