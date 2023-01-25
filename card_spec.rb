class Card
	attr_accessor :rank, :suit
	def initialize(rank,suit)
		@rank = rank
		@suit = suit

	end
end

RSpec.describe Card do

	before(:example) do # other form before do ... end, this method runs before all the examples
		@card = Card.new("Ace","Spades")

	end

	#instanciating card through helper method
	let(:card) { Card.new("Ace","Spades") }
	# let! -> same as before ... do method


	it "has a rank and that rank can change" do
		expect(card.rank).to eq("Ace") # only "card" when using helper method
		# expect(@card.rank).to eq("Ace") @card when using before method
		card.rank = "Queen"
		expect(card.rank).to eq("Queen")
	end

	it "has a suit" do
		expect(card.suit).to eq("Spades")
	end

	it "has a custom error message" do
		card.suit = "Nonsense"
		comparison = "Spades"
		expect(card.suit).to eq(comparison), "Hey I expected #{comparison} but got #{card.suit} instead"
	end
end

