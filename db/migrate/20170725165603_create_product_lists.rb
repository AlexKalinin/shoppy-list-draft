class CreateProductLists < ActiveRecord::Migration[5.1]
  def change
    create_table :product_lists do |t|
      t.string :name
      t.timestamps
    end

    create_table :product_lists_products, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :product_list, index: true
    end
  end
end
