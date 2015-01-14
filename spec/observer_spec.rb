require 'spec_helper'
require_relative '../lib/observer_pattern.rb'

describe 'Observer Pattern do' do
	describe Hero do 
		it 'gets cursed when discovers a cursed tile' do
			hero = Hero.new
			tile = Tile.new cursed: true
			hero.discover(tile)

			expect(hero.cursed?).to be_truthy
		end

		it 'does not get cursed when discovers a non-cursed tile' do
			hero = Hero.new
			tile = Tile.new
			hero.discover(tile)

			expect(hero.cursed?).to be_falsey
		end
	end

	describe Tile do

		it 'activates curse' do
			hero = Hero.new
			tile = Tile.new cursed: true
			hero.discover(tile)

			tile.activate_curse
			expect(hero.health).to eq(5)
		end

		it 'activates curse on several heros' do
			firstHero = Hero.new
			secondHero = Hero.new
			tile = Tile.new cursed: true
			firstHero.discover(tile)
			secondHero.discover(tile)

			tile.activate_curse
			expect(firstHero.health).to eq(5)
			expect(secondHero.health).to eq(5)
		end

		it 'is not cursed by default' do
			tile = Tile.new
			expect(tile.cursed?).to be_falsey
		end

		it 'can be instantiated as cursed' do
			tile = Tile.new cursed: true
			expect(tile.cursed?).to be_truthy
		end
	end
end
