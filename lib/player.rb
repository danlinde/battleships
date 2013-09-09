require_relative './board'

class Player

	attr_reader :name, :board_setup

	def initialize (name)
		@name = name
		@board_setup =  [['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','',''],
				  		['','','','','','','','','','']]
	end

	def populate_board
		(10).times {@board_setup[rand(9)][rand(9)] = 's'}
	end

	def has_ships_still_floating?
		rows.flatten.include?('s')
	end

	def shoot(at_coordinates, opponent_board)
		board.register_shot(at_coordinates)
		puts 'BANG!'
	end



end



# player = Player.new('ricardo')
# player.populate_board

# p player.board
# p player.has_ships_still_floating?