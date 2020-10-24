class Bookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :space
      t.belongs_to :user
      t.date :date
    end
  end
end
