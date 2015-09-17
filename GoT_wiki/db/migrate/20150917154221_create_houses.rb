class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :description

      t.timestamps null: false
    end
  end
end
