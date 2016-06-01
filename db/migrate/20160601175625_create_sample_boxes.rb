class CreateSampleBoxes < ActiveRecord::Migration
  def change
    create_table :sample_boxes do |t|
      t.string :name
      t.text :description
      t.string :pic
      t.decimal :price

      t.timestamps null: false
    end
  end
end
