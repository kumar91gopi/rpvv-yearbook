class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :institution_name
      t.string :course
      t.date :from
      t.date :to

      t.timestamps null: false
    end
  end
end
