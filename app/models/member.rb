class Member < ActiveRecord::Base

  validates :login, :first_name, presence: true

  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :password, length: { in: 6..20 }


end


