class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.integer :assessment_id
      t.string :note
      t.integer :user_id
      t.timestamps
    end
    add_index :notes, :assessment_id
    add_index :notes, :user_id
  end
end
