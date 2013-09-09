class Player

	attr_reader :name, :board

	def initialize (name)
		@name = name
		@board = [['','','','','','','','','',''],
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
		(10).times {@board[rand(9)][rand(9)] = 's'}
	end

	def has_ships_still_floating?
		@board.flatten.include?('s')
	end

	def shoot(at_coordinates, opponent_board)
		
	end



end



player = Player.new('ricardo')
player.populate_board

p player.board
p player.has_ships_still_floating?