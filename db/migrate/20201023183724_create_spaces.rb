class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.belongs_to :user
    end
  end
end
