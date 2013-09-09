class Board

  attr_reader :rows

  def initialize player
   	@player = player
   	@player_board = rows_hash(@player.board)
  end

  def owner
    @player.name
  end


  def register_shot at_coordinates
    @shot_coordinates = at_coordinates.chars
   
    @player_board[@shot_coordinates[0]][@shot_coordinates[1].to_i-1] == 's' ? @result = "hit" : @result = "water" 
    @player_board[@shot_coordinates[0]][@shot_coordinates[1].to_i-1] = 'x'

    @result
	end

	def rows
    @player_board.values
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