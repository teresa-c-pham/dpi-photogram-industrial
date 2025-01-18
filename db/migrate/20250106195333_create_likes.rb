class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :fan, null: false, foreign_key: { to_table: :users }
      t.references :photo, null: false, foreign_key: { to_table: :photos }

      t.timestamps
    end
  end
end