class Occupation < ActiveRecord::Base
    belongs_to :user, inverse_of: :occupations
    validates_presence_of :user
end
