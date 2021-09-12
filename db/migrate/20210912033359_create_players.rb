class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :height
      t.integer :weight
      t.date :birthday
      t.integer :graduation_year
      t.string :position
      t.boolean :recruit
      t.integer :team_id
      t.timestamps
    end
    add_index :players, :team_id
  end
end
