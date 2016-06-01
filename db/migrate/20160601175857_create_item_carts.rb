class CreateItemCarts < ActiveRecord::Migration
  def change
    create_table :item_carts do |t|
      t.belongs_to :cart, index: true, foreign_key: true
      t.belongs_to :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
