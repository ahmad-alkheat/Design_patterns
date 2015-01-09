require 'spec_helper'
require_relative '../lib/template_method_pattern.rb'

describe 'Template method pattern' do
	context 'Generic Hero' do
		let (:hero) { Hero.new }

		 it 'Causes a damage of value 10' do
		 	expect(hero.damage).to eq(10)
		 end

		 it 'Performs simple attack' do
		 	expect(hero.attack).to eq('Simple attack performed')
		 end

		 it 'Greets' do
		 	expect(hero.greet).to eq("Hi, I am a generic hero")
		 end
	end

	context 'Warrior hero' do
		let (:warrior) {Warrior.new}

		it 'Causes a damage of value 20' do
			expect(warrior.damage).to eq(20)
		end

		it 'Performs strong attack' do
			expect(warrior.attack).to eq('Strong attack performed')
		end

		it 'Has a sword' do
			expect(warrior.tools).to include(:sword)
		end

		it 'greets' do
			expect(warrior.greet).to eq("Hi, I am a warrior hero")
		end
	end




end