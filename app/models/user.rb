class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable
         
         
         enum user_type: [:student, :teacher, :principal, :other]
         
        has_one :school
        has_many :educations,  dependent: :destroy, inverse_of: :user
        has_many :occupations,  dependent: :destroy, inverse_of: :user
        accepts_nested_attributes_for :educations, :allow_destroy => true,
                                      :reject_if     => :all_blank,
                                      :allow_destroy => true
        accepts_nested_attributes_for :occupations,  :allow_destroy => true,
                                      :reject_if     => :all_blank,
                                      :allow_destroy => true
        
        validates :name, presence: true, length: { maximum: 50 }
        validates :user_type, presence: true, length: { maximum: 50 }
        validates :school_id, presence: true
        validates :date_of_birth, presence: true
        validates :about_me,  length: { maximum: 1000 }
        validates :city,  length: { maximum: 100 }
end
