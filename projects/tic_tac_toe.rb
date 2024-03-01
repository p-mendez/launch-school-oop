class Board
  attr_accessor :board

  def initialize
    self.board = Array.new(9)
  end

  def can_play?(position)
    board[position].nil?
  end

  def play(position, symbol)
    if can_play? position
      board[position] = symbol
    else
      puts 'Board position occupied.'
      false
    end
  end
end

b = Board.new
