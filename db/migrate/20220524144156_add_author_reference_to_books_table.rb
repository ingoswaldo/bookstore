class AddAuthorReferenceToBooksTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :books, :author, index: { unique: true }
  end
end
