class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.string :location
      t.decimal :cost
      t.string :gender
      t.string :img
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
