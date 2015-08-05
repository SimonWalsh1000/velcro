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


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |patient|
        csv << patient.attributes.values_at(*column_names)
      end
    end
  end


end
