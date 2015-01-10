require 'spec_helper'
require_relative '../lib/strategy_pattern'

describe 'Strategy pattern' do

	context 'It has damage and health' do
		let(:hero) { Hero.new BattleStats.new}

		it 'has damage value' do
			expect(hero.damage).to eq(10)
		end

		it 'has health value' do
			expect(hero.health).to eq(50)
		end

		it 'prints damage and health' do 
			expect(hero.print_stats).to eq('Damage is 10 and health is 50')
		end

		context 'It has skills' do
			let(:hero) { Hero.new SkillStats.new}

			it 'has 3 set of skills' do
				expect(hero.skills).to include(:fighting, :defending, :spying)
			end

			it 'prints skills' do
				expect(hero.print_stats).to eq('Skills are fighting, defending and spying')
			end

		end
	end
end