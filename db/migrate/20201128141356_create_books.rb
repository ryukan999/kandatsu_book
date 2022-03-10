class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :image
      t.string :title
      t.string :author
      t.string :publisher
      t.date :published_at
      t.string :group
      t.string :registrator
      t.integer :price
      t.text :summary
      t.integer :isbn
      t.string :google_books_api_id
      t.string :status
      t.string :comment

      t.timestamps
    end
  end
end
