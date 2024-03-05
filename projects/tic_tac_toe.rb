class Board
  attr_accessor :board

  def initialize
    self.board = create_board
  end

  def create_board
    board = {}
    positions = %i[top_l top_c top_r
                   mid_l mid_c mid_r
                   bottom_l bottom_c bottom_r]
    positions.each {|key| board[key] = nil }
    board
  end

  def can_play?(position)
    board[position].nil?
  end

  def positions_available?
    board.value? nil
  end
end

class Player
  attr_accessor :symbol, :name

  def initialize(n, s)
    self.name = n
    self.symbol = s
  end

  def self.create_player_one
    Player.new('Player 1', :o)
  end

  def self.create_player_two
    Player.new("Player 2", :x)
  end
end

class Game
  attr_reader :p1, :p2, :board

  def initialize
    @p1 = Player.create_player_one
    @p2 = Player.create_player_two
    @board = Board.new
  end

end

b = Board.new
p1 = Player.create_player_one
p2 = Player.create_player_two
puts b.positions_available?
p p1
p p2
