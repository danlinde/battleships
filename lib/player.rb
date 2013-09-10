require 'board'

class Player

	attr_reader :name, :board_setup, :board

	def initialize (name)
		@name = name
		@board_setup = [['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','','']]
		
		@board = Board.new(self)
	end

	def populate_board
		(10).times {@board_setup[rand(9)][rand(9)] = 's'}
    @board_setup
	end

	def has_ships_still_floating?
		@board.has_ships?
	end

	def shoot(at_coordinates, opponent_board)
		opponent_board.register_shot(at_coordinates)		
	end



end


