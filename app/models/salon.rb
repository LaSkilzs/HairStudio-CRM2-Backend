class Salon < ApplicationRecord
  has_many :users
  has_many :services
  has_many :messages
  has_many :schedules




  def clients
   User.all.select do |user|
     self.id === user.salon_id && user.role == "client"
   end
 end

 def stylists
   User.all.select do |user|
     self.id === user.salon_id && user.role != "client"
   end
 end
end
