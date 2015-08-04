class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_number
      t.string :street_address
      t.string :city
      t.string :state
      t.date :date_of_visit
      t.string :referral

      t.timestamps null: false
    end
  end
end
