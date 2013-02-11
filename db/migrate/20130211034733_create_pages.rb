class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :domain_id

      t.timestamps
    end
    add_index :pages, :domain_id
  end
end
