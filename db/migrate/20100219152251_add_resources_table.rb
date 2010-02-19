class AddResourcesTable < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.integer :location_id
      t.string :name
      t.text :description
      t.integer :start_hour
      t.integer :end_hour
      t.decimal :member_price, :precision => 8, :scale => 2
      t.decimal :non_member_price, :precision => 8, :scale => 2
      t.integer :number_available
      t.timestamps
    end
    add_column :users, :member_until, :datetime
    remove_column :bookings, :bookable_type
    remove_column :bookings, :bookable_id
    add_column :bookings, :resources_id, :integer
    add_column :bookings, :payment_ref, :string
  end

  def self.down
    remove_column :bookings, :payment_ref
    remove_column :bookings, :resources_id
    add_column :bookings, :bookable_id, :integer
    add_column :bookings, :bookable_type, :string
    remove_column :users, :member_until
    drop_table :resources
  end
end
