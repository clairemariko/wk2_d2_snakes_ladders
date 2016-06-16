require 'minitest/autorun'
require 'minitest/rg'
require_relative('../player')

class TestPlayer < MiniTest::Test

  def setup
    @player = Player.new("Gordon")
  end

  def test_player_has_a_name
    assert_equal("Gordon", @player.name)
  end

  def test_player_starts_at_zero
    assert_equal(0, @player.position)
  end

  def test_player_can_make_move
    @player.move(5)
    assert_equal(5, @player.position)
  end

end