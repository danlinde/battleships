require_relative '../lib/player'



describe Player do

	let(:player) {Player.new('ricardo')}

	it 'should have a name' do 
		expect(player.name).to eq 'ricardo'
	end

	it 'populate board with ships' do
		player.populate_board
		expect(player.board_setup.flatten).to include 's'
	end


	it 'should know if ships are still floating' do
		board = double(:board, {:rows => ['s']})
		expect(player.has_ships_still_floating?).to be_true
	end





	it ' should receive coordinates' do

		
	end

	it ' should receive opponent board' do

	end




	
end