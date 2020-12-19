class CognitiveFunction < ApplicationRecord
	self.primary_key = 'symbol'
	has_and_belongs_to_many :personality

	DIRECTIONS = { i: 'introverted', e: 'extroverted' }.freeze
	ACTIONS = { n: 'intuition', s: 'sensing', t: 'thinking', f: 'feeling' }.freeze

	scope :thinking, -> { where(action: 't') }
	scope :feeling, -> { where(action: 'f') }
	scope :sensing, -> { where(action: 's') }
	scope :intuition, -> { where(action: 'n') }

	scope :extroverted, -> { where(direction: 'e') }
	scope :introverted, -> { where(direction: 'i') }

	%w(primary secondary tertiary inferior).each do |name|
	  define_method "personalities_with_function_as_#{name}" do 
	  	Personality.where("#{name}_function_symbol": symbol)
	  end
	end

	def opposite_direction
		# lol gross but whatever 
		DIRECTIONS.select {|d| d != symbol.downcase.last.to_sym }.keys.first.to_s
	end

	def shadow_function
		CognitiveFunction.where(action: action, direction: opposite_direction).first
	end

	def pair_function 
		pair_action = case action   
			when 'f' 
			 	't'
			when 't' 
			 	'f'
			when 'n'  
			 	's'
			when 's' 
			 	'n'
		end
		CognitiveFunction.where(action: pair_action, direction: opposite_direction).first
	end
end
