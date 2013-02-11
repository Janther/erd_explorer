class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :inviter_id

      t.timestamps
    end
    add_index :users, :inviter_id
  end
end
