class Player

	attr_reader :name

	def initialize (name)
		@name = name
	end

	def has_ships_still_floating?
		true
	end

	def shoot(at_coordinates, opponent_board)
	end



end