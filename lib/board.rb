require 'player'

class Board

	attr_reader :player_board

  def initialize player
   	@player = player
   	@player_board = rows_hash(@player.populate_board)
  end

  def owner
    @player.name
  end


  def register_shot at_coordinates
    @shot_coordinates = at_coordinates.chars
   
    @player_board[@shot_coordinates[0]][@shot_coordinates[1].to_i-1] == 's' ? @result = "hit" : @result = "water" 
    @result == "hit" ? @player_board[@shot_coordinates[0]][@shot_coordinates[1].to_i-1] = 'x' : @player_board[@shot_coordinates[0]][@shot_coordinates[1].to_i-1] = 'o' 

    @result
	end

	def rows
    @player_board.values
  end

  def opponent_view
  #   @opponent_board = {}
  #   i = 0
  #   @players_b = @player_board.values
  #   @player_b.each{|x| 10.times {x[i] = '' if x[i] == 's'; i += 1}} 
   
   
  #   @player_board[key][value] == 's' 
  #   top_column.each {|key| @player_board[key] = @player_board.values[i]; i += 1 }
  #   @player_board 
  end

  private

  def top_column
    @top_column = %w{A B C D E F G H I J}
  end

  def rows_hash player_board
    # rows = player_board
    # index = top_column
    @player_board = {}
    i = 0
    top_column.each {|key| @player_board[key] = player_board[i]; i += 1 }
    @player_board 
  end

end