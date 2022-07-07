require 'player'

RSpec.describe Player do
  context "initially" do
    it "returns a name" do
      player = Player.new("Ollie")
      expect( player.name ).to eq "Ollie"
    end
  end
end