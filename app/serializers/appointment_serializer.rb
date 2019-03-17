class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :hairstyle, :date, :start, :duration, :status, :service_total, :user, :stylist

  belongs_to :user
  belongs_to :stylist
end
