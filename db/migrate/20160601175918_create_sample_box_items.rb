class CreateSampleBoxItems < ActiveRecord::Migration
  def change
    create_table :sample_box_items do |t|
      t.belongs_to :item, index: true, foreign_key: true
      t.belongs_to :sample_box, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
