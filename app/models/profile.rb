class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_1, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :birthday, presence: true
  validates :home, presence: true, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$\z/, message: 'phone format is invalid'}
  validates :mobile, presence: true, format: { with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$\z/, message: 'phone format is invalid'}
  validates :zip, presence: true, length: { is: 5, message: 'zip requires 5 digits'}
  validates :email, presence: true, uniqueness: true, format: { with:  /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, message: 'The format of Email is Invalid'}

  def full_name
    self.first_name + " " + self.last_name
  end

end
