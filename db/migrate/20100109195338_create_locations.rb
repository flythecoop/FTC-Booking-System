class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.text :description
      t.string :email
      t.string :phone
      t.string :add1
      t.string :add2
      t.string :city
      t.string :postcode
      t.string :lat
      t.string :lon

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
