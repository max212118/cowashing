class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :brand
      t.integer :capacity
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
