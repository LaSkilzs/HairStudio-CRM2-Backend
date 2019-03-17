class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :stylist, class_name: :User, foreign_key: :stylist_id
  enum status: {cancelled: "cancelled", confirmed: "confirmed", pending: "pending", completed: "completed"}

  has_many :service_requests
  has_many :service_types, through: :service_requests

  def name
    user = User.find(self.user_id)
    user.username
  end

end
