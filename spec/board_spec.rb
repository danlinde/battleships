require_relative '../lib/board'

describe Board do 

	let(:player) {double :player, name: 'Ting', populate_board: [['','','','','','','','','',''], ['s','','','','','','','','',''],['','','','','','','','','',''],['','','','','','','','','',''],['','','','','','','','','',''],['','','','','','','','','',''], ['s','','','','','','','','',''],['','','','','','','','','',''],['','','','','','','','','',''],['','','','','','','','','','']]}
  let(:board) {Board.new player}

  it 'has an owner' do 
    board = Board.new player
		expect(board.owner).to eq 'Ting'
	end

	it 'registers the shot at the coodinates passed - B1' do
    expect(board.register_shot('B1')).to eq 'hit'
	end 

	it 'returns an array containing 10 arrays' do 
    expect(board.rows.length).to eq 10 
	end

	it 'returns an array containing 10 arrays with 10 elements' do 
    expect(board.rows[0].length).to eq 10 
	end

	it 'returns opponents view in the form of an array containing 10 arrays with 10 elements'  
	# 	expect(board.opponent_view.length).to eq 10
	# end
    

	it 'can convert arrays to hash' 
  
  it 'can have ships' 
end