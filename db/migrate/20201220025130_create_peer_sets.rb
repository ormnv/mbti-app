class CreatePeerSets < ActiveRecord::Migration[6.1]
  def change
    create_table :peer_sets do |t|
      t.integer :first_user_id
      t.integer :second_user_id
      t.boolean :first_user_confirmation 
      t.boolean :second_user_confirmation 
      t.timestamps
    end
  end
end
