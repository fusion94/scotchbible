class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :scotch

      t.timestamps
    end
    add_index :comments, :scotch_id
  end
end
