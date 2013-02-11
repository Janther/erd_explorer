class CreateSlugs < ActiveRecord::Migration
  def change
    create_table :slugs do |t|
      t.integer :sluggable_id
      t.string :sluggable_type

      t.timestamps
    end
    add_index :slugs, [ :sluggable_id, :sluggable_type ], name: 'by_sluggable'
  end
end
