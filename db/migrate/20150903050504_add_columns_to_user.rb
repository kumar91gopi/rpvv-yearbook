class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :date_of_birth, :date
    add_column :users, :city, :string
    add_column :users, :about_me, :text
    add_column :users, :is_admin, :boolean, :default => false
  end
end
