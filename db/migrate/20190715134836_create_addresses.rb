class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :user_profile, foreign_key: true
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end
