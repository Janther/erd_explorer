class CreateRolesUsers < ActiveRecord::Migration
  def change
    create_table :roles_users do |t|
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
    add_index :roles_users, [ :user_id, :role_id ], name: 'by_user'
    add_index :roles_users, [ :role_id, :user_id ], name: 'by_role'
  end
end
