require_relative "slideable"

class Rook
  include Slideable

  def symbol
  end

  def move_dirs
    :horizontal 
  end

end