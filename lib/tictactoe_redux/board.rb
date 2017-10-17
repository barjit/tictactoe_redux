# lib/tictactoe_redux/board.rb
module TictactoeRedux
  class Board
    attr_reader :grid

    def initialize(input= { })
      @grid = input.fetch(:grid, default_grid)
    end

    def get_cell(x, y)
      grid[x][y]
    end

    def set_cell(x, y, value)
      get_cell(x, y).value = value
    end
    private

    def default_grid
      Array.new(3) { Array.new(3) { Cell.new } }
    end
  end
end