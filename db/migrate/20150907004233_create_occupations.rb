class CreateOccupations < ActiveRecord::Migration
  def change
    create_table :occupations do |t|
      t.string :company_name
      t.string :position
      t.date :from
      t.date :to
      t.string :city

      t.timestamps null: false
    end
  end
end
