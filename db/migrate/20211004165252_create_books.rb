class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image
      t.string :isbn
      t.string :desc
      t.string :publisher
    end
  end
end
