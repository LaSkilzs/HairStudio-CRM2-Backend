class Message < ApplicationRecord
  belongs_to :salon

  validates :name, presence: true
  validates :phone, presence: true, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$\z/, message: 'phone format is invalid'}
  validates :email, presence: true, uniqueness: true, format: { with:  /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: 'The format of Email is Invalid'}

end
