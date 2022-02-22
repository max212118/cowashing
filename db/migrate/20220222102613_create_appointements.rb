class CreateAppointements < ActiveRecord::Migration[6.1]
  def change
    create_table :appointements do |t|
      t.datetime :begining_hour
      t.boolean :done
      t.references :user, foreign_key: true
      t.references :machine, foreign_key: true
      t.timestamps
    end
  end
end
