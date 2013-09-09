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
		board = double(:board)
		expect(player.board).to receive(:has_ships?)
		
		player.has_ships_still_floating?
	end

  it 'registers a shot' do
  	opponent_board = double :board
  	expect(opponent_board).to receive(:register_shot).with('B4')
  	player.shoot('B4', opponent_board)
  end
	
end