class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.integer :price
      t.integer :production_time

      t.timestamps
    end
  end
end
