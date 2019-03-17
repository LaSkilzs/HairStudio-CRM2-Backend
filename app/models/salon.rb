class Salon < ApplicationRecord
  has_many :users
  has_many :services
  has_many :messages
  has_many :schedules

 validates :name, presence: true
  validates :street_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :web, presence: true
  validates :business_certification, presence: true
  validates :tax_id, presence: true
  validates :phone, presence: true, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$\z/, message: 'phone format is invalid'}
  validates :email, presence: true, uniqueness: true, format: { with:  /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: 'The format of Email is Invalid'}


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
