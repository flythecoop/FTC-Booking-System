class RemoveDesksAndMeetingRooms < ActiveRecord::Migration
  def self.up
    drop_table :desks
    drop_table :meeting_rooms
  end

  def self.down
    create_table :desks do |t|
      t.integer :location_id
      t.string :name
      t.text :description
      t.decimal :member_price, :precision => 8, :scale => 2
      t.decimal :non_member_price, :precision => 8, :scale => 2

      t.timestamps
    end
    
    create_table :meeting_rooms do |t|
      t.integer :location_id
      t.string :name
      t.text :description
      t.decimal :member_price, :precision => 8, :scale => 2
      t.decimal :non_member_price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
