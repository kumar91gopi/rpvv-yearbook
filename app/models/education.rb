class Education < ActiveRecord::Base
    belongs_to :user, inverse_of: :educations
     validates_presence_of :user
end
