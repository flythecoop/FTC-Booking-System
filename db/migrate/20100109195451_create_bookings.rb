class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.integer :user_id
      t.string :bookable_type
      t.integer :bookable_id
      t.datetime :start_at
      t.datetime :end_at
      t.datetime :paid

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
