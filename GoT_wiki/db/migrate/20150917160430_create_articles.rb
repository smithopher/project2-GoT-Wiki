class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :author, index: true, foreign_key: true
      t.string :title
      t.text :content
      t.timestamp :updated_at
      t.references :category, index: true, foreign_key: true
      t.references :house, index: true, foreign_key: true
      t.string :photo_path

      t.timestamps null: false
    end
  end
end
