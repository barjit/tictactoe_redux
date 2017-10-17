# lib/tictactoe_redux/player.rb
module TictactoeRedux
  class Player
    attr_reader :name, :team
    
    def initialize(input)
      @name = input.fetch(:name)
      @team = input.fetch(:team)
    end
  end
end
