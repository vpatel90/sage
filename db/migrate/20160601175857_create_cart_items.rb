class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.belongs_to :cart, index: true, foreign_key: true
      t.integer :cart_itemable_id, foreign_key: true
      t.string :cart_itemable_type
      t.timestamps null: false
    end
  end
end
