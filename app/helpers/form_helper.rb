module FormHelper
  def setup_user(user)
    3.times { user.educations.build }
    3.times { user.occupations.build }
    user
  end
end