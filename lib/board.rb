class Board

  attr_reader :rows

  def initialize player
   	@player = player
  end

  def owner
    @player.name
  end


  def register_shot at_coordinates
    @shot_coordinates = at_coordinates
	end

	def rows
		@rows = []

		10.times {@rows << ['','','','','','','','','','']}
    @rows

    arr = %w{A,B,C,D,E,F,G,H,I,J}

    
	end

end