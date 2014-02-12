class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :scotch

      t.timestamps
    end
    add_index :tags, :scotch_id
  end
end
