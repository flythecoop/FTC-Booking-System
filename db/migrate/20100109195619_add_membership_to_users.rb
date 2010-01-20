class AddMembershipToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :member, :boolean
    add_column :users, :first_name, :string
    add_column :users, :surname, :string
    add_column :users, :company, :string
    add_column :users, :phone, :string
  end

  def self.down
    remove_column :users, :phone
    remove_column :users, :company
    remove_column :users, :surname
    remove_column :users, :first_name
    remove_column :users, :member
  end
end
