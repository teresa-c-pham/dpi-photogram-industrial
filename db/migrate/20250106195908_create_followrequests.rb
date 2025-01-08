class CreateFollowrequests < ActiveRecord::Migration[7.1]
  def change
    create_table :followrequests do |t|
      t.references :recipient, null: false, foreign_key: { to_table: :users }
      t.references :sender, null: false, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
