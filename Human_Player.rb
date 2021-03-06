# encoding: utf-8

class HumanPlayer
  attr_accessor :color

  def select_color
    choice = ''
    while true
      puts "Please select your color: b for black and w for white."
      choice = gets.chomp.downcase
      break unless choice != 'b' && choice != 'w'
    end

    choice == 'b' ? @color = :black : @color = :white
  end

  def set_color(color)
    @color = color
  end

  def select_move(prompt)
    begin
      puts prompt
      pos = gets.chomp.split(",").map(&:to_i)
    rescue
      puts "Invalid position. Please try again."
      retry
    end

    pos
  end

  def take_turn
    pos = select_move("Please select a piece: row,col")
    move = select_move("Where would you like to move?")
    pos = pos[0] - 1, pos[1] - 1
    move = move[0] - 1, move[1] - 1

    [pos, move]
  end
end
