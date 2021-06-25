class Signup < ActiveRecord::Base
    self.table_name="signintables"
    validates :email,presence:true
    validates :password,presence:true
    validates :name,presence:true 
end
