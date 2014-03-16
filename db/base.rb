class Members < ActiveRecord::Base
      validates :first_name, length: { minimum: 2 }
      validates :last_name, length: { minimum: 2 }
      validates :password, length: { in: 6..20 }
end
