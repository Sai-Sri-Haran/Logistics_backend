class Signin <ActiveRecord::Base
    self.table_name="signintables"
    validates :email, presence: true
	validates :password, presence: true
end