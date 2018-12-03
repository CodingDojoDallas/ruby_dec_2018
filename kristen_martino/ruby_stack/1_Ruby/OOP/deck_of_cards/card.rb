class Card

	def initialize (suit, title, val)
		@suit  = suit
		@title = title
		@val   = val
	end

	def show
		puts "#{@title} of #{@suit}"
	end

end
