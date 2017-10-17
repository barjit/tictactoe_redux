# spec/player_spec.rb
require "spec_helper"

module TictactoeRedux
  RSpec.describe Player do
    context "#initialize" do
      it "raises an error if initialized with empty Hash" do
        expect { Player.new({ }) }.to raise_error(KeyError)
      end

      it "doesn't raise an error if input Hash is valid" do
        expect { Player.new({ name: 'Someone', team: 'X' }) }.to_not raise_error
      end
    end

    context "#name" do
      it "returns the players name" do
        input = Player.new({ name: 'Someone', team: 'X' })
        expect(input.name).to eq('Someone')
      end
    end

    context "#team" do
      it "returns the players team" do
        input = Player.new({ name: 'Someone', team: 'X' })
        expect(input.team).to eq('X')
      end
    end
  end
end
