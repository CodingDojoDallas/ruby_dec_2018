class AppleTree

attr_reader :height, :apple
	def initialize age
		@age = age
		@height = 10
		@apple = 5
	end

	def age
		"The tree is #{@age} years old"
	end

	def height
		"The tree is #{@height} feet tall"
	end

  def year_gone_by
		@age += 1
		@height = (@height + (0.10 * @age))
		if @age < 3
			@apple = 0
		elsif @age > 10
			@apple
		else
			@apple +=2
		end
		"Tree is now #{@age} years old and has #{@apple} apples, and is #{@height} ft tall"
    # @apple
	end

  def apple_pick
    @apple = 0
  end

end
