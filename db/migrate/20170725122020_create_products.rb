class CreateProducts < ActiveRecord::Migration[5.1]
	def change
		create_table :products do |t|
			t.string :name
			t.string :description
			t.integer :amount
			t.string :unit
			t.integer :color

			t.timestamps
		end
	end
end
