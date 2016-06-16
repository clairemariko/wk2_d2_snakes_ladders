class Board

  attr_reader :state

  def initialize(size,positions)
    @state = Array.new(size,0)
    build_board(positions)
  end

def win_tile
  @state.size - 1
end



private #will not be for outside world, anything below is private

  def build_board(positions)
    for key in positions.keys
    @state[key] = positions[key]
    end
  end






end