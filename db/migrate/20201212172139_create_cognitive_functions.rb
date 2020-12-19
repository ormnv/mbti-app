class CreateCognitiveFunctions < ActiveRecord::Migration[6.1]
  def change
    create_table :cognitive_functions do |t|
      t.string :direction, limit: 1, null: false
      t.string :action, limit: 1, null: false
      t.string :symbol

      t.timestamps
    end
  end
end
