require_relative '../lib/player'



describe Player do

	let(:player) {Player.new('ricardo')}

	it 'should have a name' do 
		expect(player.name).to eq 'ricardo'
	end

	it 'populate board with ships' do
		player.populate_board
		expect(player.board.flatten).to include 's'
	end


	it 'should know if ships are still floating' do
		player.populate_board
		expect(player.has_ships_still_floating?).to be_true
	end





	it ' should receive coordinates' do
		input = double(:input)
		expect(input).to receive :at_coordinates

		player.shoot(input.at_coordinates, nil)
	end

	it ' should receive opponent board' do
		board = double(:board)
		expect(board).to receive :opponent_board

		player.shoot(nil, board.opponent_board)
	end


	# it 'should be able to shoot' do
	# 	board = double(:board) {:opponent_board => true}
	# 	input = double(:input) {:at_coordinates => "A1"}
	# 	expect(player.shoot(input.at_coordinates, board.opponent_board)).to be_true
	# end

	
end