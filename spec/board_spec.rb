# spec/board_spec.rb
require "spec_helper"

module TictactoeRedux
  RSpec.describe Board do
    context '#initialize' do
      it 'initializes the board with input hash key of grid' do
        expect { Board.new(grid: " ") }.to_not raise_error
      end

      it 'sets the game_board grid with three rows by default' do
        game_board = Board.new
        expect(game_board.grid.size).to eq(3)
      end

      it 'sets each game_board grid row with three things by' do
        game_board = Board.new
        game_board.grid.each do |row|
          expect(row.size).to eq(3)
        end
      end
    end

    context '#grid' do
      it 'returns the grid' do
        game_board = Board.new(grid: 'test')
        expect(game_board.grid).to eq 'test'
      end
    end

    context '#get_cell' do
      it 'returns the value of the specified cell' do
        example_grid = [['', '', ''], ['', '', 'something'], ['', '', '']]
        game_board = Board.new(grid: example_grid)
        expect(game_board.get_cell(1, 2)).to eq 'something'
      end
    end

    context '#set_cell' do
      it 'changes the value of the specified cell' do
        Cat = Struct.new(:value)
        example_grid = [['', Cat.new('meow'), ''], ['', '', ''], ['', '', '']]
        game_board = Board.new(grid: example_grid)
        game_board.set_cell(0, 1, 'woof')
        expect(game_board.get_cell(0, 1).value).to eq 'woof'
      end
    end
  end
end
