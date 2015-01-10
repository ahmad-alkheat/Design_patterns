class Hero
	attr_reader :damage, :health, :skills
	attr_accessor :printer

	def initialize(printer)
		@damage = 10
		@health = 50
		@skills = [:fighting, :defending, :spying]
		@printer = printer

	end

	def print_stats
		printer.print
	end
end

class BattleStats
	def print()
		'Damage is 10 and health is 50'
	end
end

class SkillStats
	def print()
		'Skills are fighting, defending and spying'
	end
end