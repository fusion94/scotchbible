class CreateScotches < ActiveRecord::Migration
  def change
    create_table :scotches do |t|
      t.string :name
      t.string :country
      t.string :region
      t.string :distillery
      t.string :bottler
      t.string :age
      t.string :style
      t.string :alcohol
      t.string :volume
      t.text :description

      t.timestamps
    end
  end
end
