class AddPictureToMachine < ActiveRecord::Migration[6.1]
  def change
    add_column :machines, :machine_picture, :string
  end
end
