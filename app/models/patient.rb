class Patient < ActiveRecord::Base
  belongs_to :user

  before_save  :update_user

  def update_user
    user = self.user
    if user.last_case.nil?
      user.last_case = 1
      user.save
    else
      user.last_case += 1
      user.save
    end
  end
end
