module Slideable
  HORIZONTAL_DIRS = [
      [0, 1],
      [0, -1],
      [-1, 0],
      [1, 0]
    ]

  DIAGONAL_DIRS = [
      [1, 1],
      [1, -1],
      [-1, -1],
      [-1, 1]
    ]

  def horizontal_dirs
    possible_moves = []
    dx, dy = self.pos
    moves = grow_unblocked_moves_in_horizontal(dx, dy)
    moves.each do |element|
      if @board[element].type == "NullPiece"
        possible_moves << element
      end
    end
    grow_unblocked_moves_in_horizontal

  end

  def diagonal_dirs
   
  end

  def moves
    
  end

  def grow_unblocked_moves_in_horizontal(dx, dy)
    increased = []
    HORIZONTAL_DIRS.each do |elements|
      dx, dy += elements[0], elements[1]
      increased << [dx, dy]
    end
    increased
  end

  def grow_unblocked_moves_in_diagonal(dx,dy)
     
  end
end