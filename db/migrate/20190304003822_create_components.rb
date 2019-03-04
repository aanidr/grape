class CreateComponents < ActiveRecord::Migration[5.2]
  def change
    create_table :components do |t|
      t.string :code
      t.integer :price
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
