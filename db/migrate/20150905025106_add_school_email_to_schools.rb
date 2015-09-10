class AddSchoolEmailToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :school_email, :string
  end
end
