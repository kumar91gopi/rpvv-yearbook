class AddUserRefToOccupations < ActiveRecord::Migration
  def change
    add_reference :occupations, :user, index: true, foreign_key: true
  end
end
