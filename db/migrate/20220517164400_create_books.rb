class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books, id: :uuid do |t|
      t.string :name, null: false, limit: 30
      t.string :description
      t.decimal :price, null: false, precision: 20, scale: 2
      t.integer :number_of_pages, null: false
      t.datetime :published_at, null: false
      t.boolean :active, default: false

      t.timestamps
    end
  end
end
