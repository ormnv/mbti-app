class Personality < ApplicationRecord
	has_one :cognitive_function, foreign_key: :symbol, primary_key: :primary_function_symbol
	has_one :cognitive_function, foreign_key: :symbol, primary_key: :secondary_function_symbol
	has_one :cognitive_function, foreign_key: :symbol, primary_key: :tertiary_function_symbol
	has_one :cognitive_function, foreign_key: :symbol, primary_key: :inferior_function_symbol

	scope :nt, -> { where("name like ?", "%NT%") }
	scope :nf, -> { where("name like ?", "%NF%") }
	scope :sj, -> { where("name like ?", "%S%J") }
	scope :sp, -> { where("name like ?", "%S%P") }

	%w(primary secondary tertiary inferior).each do |name|
	  define_method "#{name}_function" do 
	    CognitiveFunction.find_by(
	    	symbol: self.send("#{name}_function_symbol")
	    )
	  end
	end
end
