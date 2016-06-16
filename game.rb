class Game

  attr_reader :board, :current_player

  def initialize(players, board)
    @board = board
    @players = players
    @current_player = players[0]
    @winner = nil
  end

  def number_of_players
    @players.count
  end

  def update_current_player
    @current_player = @players.rotate![0]
  end

  def next_turn(spaces)
    @current_player.move(spaces)
    modifire = @board.state[@current_player.position] #looking up the index the player lands on
    @current_player.move(modifire)
    update_current_player
  end

  def game_win(spaces)
    @winner
  end

end