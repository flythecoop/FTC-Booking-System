class CreateDesks < ActiveRecord::Migration
  def self.up
    create_table :desks do |t|
      t.integer :location_id
      t.string :name
      t.text :description
      t.decimal :member_price, :precision => 8, :scale => 2
      t.decimal :non_member_price, :precision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :desks
  end
end
