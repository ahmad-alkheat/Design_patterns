class Hero
	attr_reader :damage, :tools
	def initialize
		@damage = damage_value
		@tools = tools
	end

	def attack
		attack_type
	end

	def tools
		[]
	end

	def damage_value # hook
		10
	end

	def attack_type
		"Simple attack performed"
	end

	def greet # template method, unique_greeting is implemented by each subclass
		greeting = "Hi, "
		greeting << unique_greeting
		greeting
	end

	def unique_greeting
		"I am a generic hero"
	end
end

class Warrior < Hero
	def damage_value
		20
	end

	def attack
		'Strong attack performed'
	end

	def tools
		[:sword]
	end

	def unique_greeting
		"I am a warrior hero"
	end
end
