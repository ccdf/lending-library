class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.belongs_to :book, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.date :checkout_date
      t.date :checkin_date

      t.timestamps null: false
    end
  end
end
