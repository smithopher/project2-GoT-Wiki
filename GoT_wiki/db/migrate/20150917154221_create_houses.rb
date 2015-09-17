class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :house_name
      t.string :description
      t.string :motto
      t.string :symbol_url
      t.timestamps null: false
    end
  end
end
