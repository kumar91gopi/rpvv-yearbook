class AddColumnsToSchool < ActiveRecord::Migration
  def change
    add_column :schools, :address, :text
    add_column :schools, :phone_number, :string
  end
end
