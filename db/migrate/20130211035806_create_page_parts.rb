class CreatePageParts < ActiveRecord::Migration
  def change
    create_table :page_parts do |t|
      t.integer :page_id

      t.timestamps
    end
    add_index :page_parts, :page_id
  end
end
