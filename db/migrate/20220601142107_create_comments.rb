class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :message, null: false
      t.boolean :approved, default: false
      t.references :book, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
