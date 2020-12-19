class CreatePersonalitys < ActiveRecord::Migration[6.1]
  def change
    create_table :personalities do |t|
      t.string :primary_function_symbol
      t.string :secondary_function_symbol
      t.string :tertiary_function_symbol
      t.string :inferior_function_symbol
      t.string :tagline
      t.string :description
      t.string :name

      t.timestamps
    end
  end
end
