# encoding: utf-8

require_relative 'Stepping_Piece'

class Knight < SteppingPiece
  def initialize(pos, color, board)
    super(pos, color, board)
    @symbol = '♞' if color == :black
    @symbol = '♘' if color == :white
  end

  def move_dirs
    KNIGHT_DELTAS
  end

end
