class CreateAssessments < ActiveRecord::Migration[6.0]
  def change
    create_table :assessments do |t|
      t.string :assessment_type, default: 'event'
      t.integer :player_id
      t.integer :tournament_id
      t.integer :user_id
      t.integer :rating
      t.timestamps
    end
    add_index :assessments, :player_id
    add_index :assessments, :tournament_id
    add_index :assessments, :user_id
  end
end
