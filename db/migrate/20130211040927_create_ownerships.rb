class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :page_id
      t.integer :user_id

      t.timestamps
    end
    add_index :ownerships, [ :page_id, :user_id ], name: 'by_page'
    add_index :ownerships, [ :user_id, :page_id ], name: 'by_user'
  end
end
