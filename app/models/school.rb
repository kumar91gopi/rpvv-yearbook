class School < ActiveRecord::Base
    belongs_to :users
    validates :name, presence: true, length: { maximum: 150 }
    validates :phone_number, presence: true, length: { maximum: 50 }
    validates :address, presence: true, length: { maximum: 200 }
end
