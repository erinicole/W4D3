require "singleton"

class Piece
  attr_accessor :type, :pos
  def initialize(type, pos=nil)
    @type = type
    @pos = pos
  end

  def change_pos(end_pos)
    self.pos = end_pos
    self
  end

end

class NullPiece < Piece
   include Singleton
end

class Pawn < Piece
  def moves(pos)
    potential_moves = []
    row, col = pos
    possible_moves = [
      [row + 1, col + 1],
      [row + 1, col + 0],
      [row + 1, col - 1],
    ]
    possible_moves.each do |subarr|
      if subarr.all? { |el| el >= 0 && el <= 7 }
        potential_moves << subarr
      end
    end
    potential_moves
  end
end

class Bishop < Piece
  def moves(pos)
    potential_moves = []
    row, col = pos
    possible_moves = [
      [row + 1, col + 1],
      [row + 2, col + 2],
      [row + 3, col + 3],
      [row + 4, col + 4],
      [row + 5, col + 5],
      [row + 6, col + 6],
      [row + 7, col + 7],

      [row - 1, col - 1],
      [row - 2, col - 2],
      [row - 3, col - 3],
      [row - 4, col - 4],
      [row - 5, col - 5],
      [row - 6, col - 6],
      [row - 7, col - 7],

      [row + 1, col - 1],
      [row + 2, col - 2],
      [row + 3, col - 3],
      [row + 4, col - 4],
      [row + 5, col - 5],
      [row + 6, col - 6],
      [row + 7, col - 7],

      [row - 1, col + 1],
      [row - 2, col + 2],
      [row - 3, col + 3],
      [row - 4, col + 4],
      [row - 5, col + 5],
      [row - 6, col + 6],
      [row - 7, col + 7],
    ]
    possible_moves.each do |subarr|
      if subarr.all? { |el| el >= 0 && el <= 7 }
        potential_moves << subarr
      end
    end
    potential_moves
  end
end

class Rook < Piece
  def moves(pos)
    potential_moves = []
    row, col = pos
    possible_moves = [
      [row + 0, col + 1],
      [row + 0, col + 2],
      [row + 0, col + 3],
      [row + 0, col + 4],
      [row + 0, col + 5],
      [row + 0, col + 6],
      [row + 0, col + 7],

      [row - 0, col - 1],
      [row - 0, col - 2],
      [row - 0, col - 3],
      [row - 0, col - 4],
      [row - 0, col - 5],
      [row - 0, col - 6],
      [row - 0, col - 7],

      [row + 1, col - 0],
      [row + 2, col - 0],
      [row + 3, col - 0],
      [row + 4, col - 0],
      [row + 5, col - 0],
      [row + 6, col - 0],
      [row + 7, col - 0],

      [row - 1, col + 0],
      [row - 2, col + 0],
      [row - 3, col + 0],
      [row - 4, col + 0],
      [row - 5, col + 0],
      [row - 6, col + 0],
      [row - 7, col + 0],
    ]
    possible_moves.each do |subarr|
      if subarr.all? { |el| el >= 0 && el <= 7 }
        potential_moves << subarr
      end
    end
    potential_moves
  end
end

class Knight < Piece
  def moves(pos)
    potential_moves = []
    row, col = pos
    possible_moves = [
      [row + 2, col + 1],
      [row + 1, col + 2],
      [row - 2, col + 1],
      [row - 1, col + 2],
      [row - 2, col - 1],
      [row - 1, col - 2],
      [row + 1, col - 2],
      [row + 2, col - 1]
    ]
    possible_moves.each do |subarr|
      if subarr.all? { |el| el >= 0 && el <= 7 }
        potential_moves << subarr
      end
    end
    potential_moves
  end
end

class Queen < Piece
  def moves(pos)
    potential_moves = []
    row, col = pos
    possible_moves = [
      #start bishop portion
      [row + 1, col + 1],
      [row + 2, col + 2],
      [row + 3, col + 3],
      [row + 4, col + 4],
      [row + 5, col + 5],
      [row + 6, col + 6],
      [row + 7, col + 7],

      [row - 1, col - 1],
      [row - 2, col - 2],
      [row - 3, col - 3],
      [row - 4, col - 4],
      [row - 5, col - 5],
      [row - 6, col - 6],
      [row - 7, col - 7],

      [row + 1, col - 1],
      [row + 2, col - 2],
      [row + 3, col - 3],
      [row + 4, col - 4],
      [row + 5, col - 5],
      [row + 6, col - 6],
      [row + 7, col - 7],

      [row - 1, col + 1],
      [row - 2, col + 2],
      [row - 3, col + 3],
      [row - 4, col + 4],
      [row - 5, col + 5],
      [row - 6, col + 6],
      [row - 7, col + 7],
      #start rook portion
      [row + 0, col + 1],
      [row + 0, col + 2],
      [row + 0, col + 3],
      [row + 0, col + 4],
      [row + 0, col + 5],
      [row + 0, col + 6],
      [row + 0, col + 7],

      [row - 0, col - 1],
      [row - 0, col - 2],
      [row - 0, col - 3],
      [row - 0, col - 4],
      [row - 0, col - 5],
      [row - 0, col - 6],
      [row - 0, col - 7],

      [row + 1, col - 0],
      [row + 2, col - 0],
      [row + 3, col - 0],
      [row + 4, col - 0],
      [row + 5, col - 0],
      [row + 6, col - 0],
      [row + 7, col - 0],

      [row - 1, col + 0],
      [row - 2, col + 0],
      [row - 3, col + 0],
      [row - 4, col + 0],
      [row - 5, col + 0],
      [row - 6, col + 0],
      [row - 7, col + 0],
    ]
    possible_moves.each do |subarr|
      if subarr.all? { |el| el >= 0 && el <= 7 }
        potential_moves << subarr
      end
    end
    potential_moves
  end
end

class King < Piece
  def moves(pos)
    potential_moves = []
    row, col = pos
    possible_moves = [
      [row + 0, col + 1],
      [row - 0, col - 1],
      [row + 1, col - 0],
      [row - 1, col + 0],

      [row + 1, col + 1],
      [row - 1, col - 1],
      [row + 1, col - 1],
      [row - 1, col + 1],
    ]
    possible_moves.each do |subarr|
      if subarr.all? { |el| el >= 0 && el <= 7 }
        potential_moves << subarr
      end
    end
    potential_moves
  end
end
