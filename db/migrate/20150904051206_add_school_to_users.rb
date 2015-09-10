class AddSchoolToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school_id, :int
  end
end
