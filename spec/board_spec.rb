require_relative '../lib/board'

describe Board do 
  it 'has an owner' do 
		player = double :player, name: 'jodie'
    board = Board.new player
		expect(board.owner).to eq 'jodie'
	end

	it 'registers the shot at the coodinates passed - B1' do
    player = double :player
    board = Board.new player
    expect(board.register_shot('B1')).to eq 'B1'
	end 

	it 'returns an array containing 10 arrays' do 
    player = double :player
    board = Board.new player
    expect(board.rows.length).to eq 10 
	end

	it 'returns an array containing 10 arrays with 10 elements' do 
    player = double :player
    board = Board.new player
    expect(board.rows[0].length).to eq 10 
	end

	it 'returns an array containing 10 arrays with 10 elements '
end