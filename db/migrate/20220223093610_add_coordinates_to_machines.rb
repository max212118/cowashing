class AddCoordinatesToMachines < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :latitude, :float
    add_column :machines, :longitude, :float
  end
end
