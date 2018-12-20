require_relative "human"
class Wizard < Human
	def initialize
		super
		@health = 50
		@intelligence = 25
	end

	def heal
		@health += 10
	end

	def fireball(obj)
		if obj.class.ancestors.include?(Human)
			obj.health -= 20
			true
		else
			false
		end
	end
end

class Ninja < Human
	def initialize
		super
		@stealth = 175
	end

	def steal(obj)
		attack(obj)
		@health += 10
	end

	def get_away
		@health -= 15
	end
end

class Samurai < Human
	@@Num_of_sam = 0

	def initialize
		super
		@health = 200
		@@Num_of_sam += 1
	end

	def death_blow(obj)
		if obj.class.ancestors.include?(Human)
			obj.health = 0
			true
		else
			false
		end
	end

	def meditate
		@health = 200
	end

	def self.count
		@@Num_of_sam
	end
end

Dumbledore = Wizard.new
Willow = Wizard.new
Sam = Samurai.new
Fuma = Ninja.new
Dumbledore.fireball(Willow)
puts Willow.health
Sam.death_blow(Dumbledore)
puts Dumbledore.health
Fuma.steal(Sam)
puts Sam.health
Sam.meditate
puts Sam.health








































