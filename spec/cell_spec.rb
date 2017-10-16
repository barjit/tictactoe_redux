require "spec_helper"

module TictactoeRedux
  RSpec.describe Cell do

    context "#initialize" do
      it "initializes with a default value of ''" do
        cell = Cell.new
        expect(cell.value).to eq ''
      end

      it "can be initialized with an inputted value, like 'X'" do
        cell = Cell.new('X')
        expect(cell.value).to eq 'X'
      end

      it "can be initialized with an inputted value, lile 'O'" do
        cell = Cell.new('O')
        expect(cell.value).to eq 'O'
      end
    end
  end
end
